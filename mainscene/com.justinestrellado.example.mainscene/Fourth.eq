
/*
 * Fourth
 * Created by Eqela Studio 2.0b7.4
 */

public class Fourth : SEScene
{
	SESprite text;
	SESprite mainscene;
	SESprite looney;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
			add_sprite_for_color(Color.instance("#00FFFF"), get_scene_width(), get_scene_height());
			
			rsc.prepare_image("main", "main", get_scene_width()*0.2,get_scene_height()*0.2);
			rsc.prepare_image("mania", "taz", get_scene_width()*0.5,get_scene_height()*0.65);
			rsc.prepare_font("myfont", "arial bold color=#000000", 80);
			
			mainscene = add_sprite_for_image(SEImage.for_resource("main"));
			looney = add_sprite_for_image(SEImage.for_resource("mania"));
			text = add_sprite_for_text("Fourth Scene", "myfont");

			mainscene.move(get_scene_width()*0.75,get_scene_height()*0.75);
			looney.move(get_scene_width()*0.5,0);
			text.move(0,0);
	}
	
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		
		if(pi.is_inside(0.75*get_scene_width(),0.75*get_scene_height(),0.75*get_scene_width(),0.75*get_scene_height())) {
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
