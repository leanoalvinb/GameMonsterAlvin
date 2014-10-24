
/*
 * HeroEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class HeroEntity : SEEntity
{
	int w;
	int h;
	SESprite lol;

	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();
		rsc.prepare_image("mylol","lol",0.1* w);
		lol = add_sprite_for_image(SEImage.for_resource("mylol"));
		lol.move(0.5*w,0.5*h);
	}
	public void tick(TimeVal now, double delta)
	{
		base.tick(now,delta);
		lol.move(MainScene.x,MainScene.y);
	}
	public void cleanup()
	{
		base.cleanup();
	}
}

