var psyshockParticle:Character;	
var psyshockCooldown:Int = 80;
var psyshocking:Bool = false;

psyshockParticle = new Character(0, 0, 'hypno');
psyshockParticle.playAnim("psyshock particle", true);
psyshockParticle.alpha = 0;
add(psyshockParticle);

if (!ClientPrefs.photosensitive)
camHUD.flash(FlxColor.fromString('0xFFFFAFC1'), 0.1, null, true);
FlxG.sound.play(Paths.sound('Psyshock', 'shared'), 0);
tranceSound = FlxG.sound.play(Paths.sound('TranceStatic', 'shared'), 0, true);