

## edited to i3 numix (only gtk2) by ~lovelybacon.deviantart.com
#mookid by MAD | aMADme.deviantart.com
#modification of Dyne By lyrae | thrynk.deviantart.com

include "panel.rc"
include "menubar.rc"

gtk-icon-sizes = "panel-menu=12,12:panel=12,12:gtk-button=12,12:gtk-large-toolbar=12,12"
gtk-button-images = 0
gtk-menu-images = 0


style "default"
{
  GtkWidget::interior_focus			= 7
  GtkWidget::focus_padding			= 0
  GtkButton::default_border			= { 0, 0, 0, 0 }
  GtkButton::default_outside_border		= { 0, 0, 0, 0 }
 
  GtkRange::trough_border			= 0
  GtkRange::slider_width			= 15
  GtkRange::stepper_size			= 15
 
  GtkVScale::slider_length 			= 11
  GtkVScale::slider_width 			= 21
  GtkHScale::slider_length 			= 11
  GtkHScale::slider_width 			= 21

  GtkPaned::handle_size				= 6
  GtkScrollbar::min_slider_length		= 50
  GtkCheckButton::indicator_size		= 12
  GtkCheckButton::indicator_spacing		= 3
  GtkMenuBar::internal_padding			= 1
  GtkOptionMenu::indicator_size			= { 15, 8 }
  GtkOptionMenu::indicator_spacing		= { 8, 2, 0, 0 }
  GtkStatusbar::shadow_type			= GTK_SHADOW_NONE
  GtkSpinButton::shadow_type 			= GTK_SHADOW_NONE

  xthickness            	= 2
  ythickness            	= 2

  fg[NORMAL]       	 = "#dedede" # Metacity and mouseover, Most text
  fg[ACTIVE]       	 = "#dedede"
  fg[PRELIGHT]     	 = "#d64937"
  fg[SELECTED]     	 = "#ecedee"
  fg[INSENSITIVE]  	 = "#434343"

  bg[NORMAL]       	 = "#2d2d2d" # Normal Background
  bg[ACTIVE]       	 = "#2d2d2d"
  bg[PRELIGHT]     	 = "#d64937" # Expand prelight bg
  bg[SELECTED]     	 = "#d64937"
  bg[INSENSITIVE]  	 = "#eeeeee"

  base[NORMAL]     	 = "#2d2d2d" # Background, most
  base[ACTIVE]     	 = "#d64937" # Menu active item in inactive window
  base[PRELIGHT]   	 = "#d64937"
  base[INSENSITIVE] = "#d64937" # Inactive Entry bg
  base[SELECTED]     = "#d64937" # Menu active item in active window

  text[NORMAL]	 = "#dedede" # Text in window, arrows
  text[INSENSITIVE]	 = "#c3c3c3" # Insensitive arrows
  text[SELECTED]   	 = "#ecedee" # Active text in active window
  text[ACTIVE]     	 = "#ecedee" # Active text in inactive window
  text[PRELIGHT]   	 = "#ecedee" # Text on Mouseover



  engine "pixmap"
  {
    image
    {
      function				= HANDLE
      recolorable			= TRUE
      overlay_file			= "Panel/handle-v.png"
      overlay_stretch	= FALSE
      orientation			= HORIZONTAL
    }
    image
    {
      function				= HANDLE
      recolorable			= TRUE
      overlay_file			= "Panel/handle-h.png"
      overlay_stretch	= FALSE
      orientation			= VERTICAL
    }

####################### SHADOWS ############################x

    image
    {
      function			= SHADOW
      shadow			= IN
      recolorable		= FALSE
      file				= "Shadows/shadow-in.png"
      border			= { 3, 3, 2, 2 }
      stretch			= TRUE
    }
    image
    {
       function		= SHADOW
       shadow			= OUT
       recolorable		= TRUE
       file				= "Shadows/shadow-out.png"
       stretch			= TRUE
    }

    image
    {
       function		= SHADOW
       shadow			= ETCHED_IN
       recolorable		= TRUE
       file				= "Frame-Gap/frame1.png"				
       border			= { 2, 2, 2, 2 }
       stretch			= TRUE
    }
    image
    {
       function		= SHADOW
       shadow			= ETCHED_OUT
       recolorable		= TRUE
       file				= "Shadows/shadow-none.png"
       border			= { 2, 2, 2, 2 }
       stretch			= TRUE
    }
    image
    {
       function			= SHADOW_GAP
       recolorable			= TRUE
       file					= "Frame-Gap/frame1.png"
       border				= { 2, 2, 2, 2 }
       stretch				= TRUE
       gap_start_file		= "Frame-Gap/frame-gap-start.png"
       gap_start_border	= { 2, 0, 2, 0 }
       gap_end_file		= "Frame-Gap/frame-gap-end.png"
       gap_end_border	= { 0, 2, 2, 0 }
       gap_side			= TOP
    }

    image
    {
       function		= VLINE
       recolorable		= TRUE
       file				= "Lines/line-v.png"
       border			= { 1, 1, 0, 0 }
       stretch			= TRUE
    }
    image
    {
      function			= HLINE
      recolorable		= TRUE
      file				= "Lines/line-h.png"
      border			= { 0, 0, 1, 1 }
      stretch			= TRUE
    }

    # focus

    image
    {
      function			= FOCUS
      recolorable		= TRUE
      file				= "Others/focus.png"
      border			= { 6, 0, 6, 0 }
      stretch			= TRUE
    }	

    # arrows

    image
    {
      function				= ARROW
      recolorable			= TRUE
      overlay_file			= "Arrows/arrow-up.png"
      overlay_border	= { 0, 0, 0, 0 }
      overlay_stretch	= FALSE
      arrow_direction	= UP
    }
    image
    {
      function				= ARROW
      state				= NORMAL
      recolorable			= TRUE
      overlay_file			= "Arrows/arrow-down.png"
      overlay_border	= { 0, 0, 0, 0 }
      overlay_stretch	= FALSE
      arrow_direction	= DOWN
    }
    image
    {
      function				= ARROW
      state				= PRELIGHT
      recolorable			= TRUE
      overlay_file			= "Arrows/arrow-down-prelight.png"
      overlay_border	= { 0, 0, 0, 0 }
      overlay_stretch	= FALSE
      arrow_direction	= DOWN
    }
    image
    {
      function				= ARROW
      state				= ACTIVE
      recolorable			= TRUE
      overlay_file			= "Arrows/arrow-down-pressed.png"
      overlay_border	= { 0, 0, 0, 0 }
      overlay_stretch	= FALSE
      arrow_direction	= DOWN
    }

    image
    {
      function				= ARROW
      state				= INSENSITIVE
      recolorable			= TRUE
      overlay_file			= "Arrows/arrow-down-insens.png"
      overlay_border	= { 0, 0, 0, 0 }
      overlay_stretch	= FALSE
      arrow_direction	= DOWN
    }

    image
    {
      function				= ARROW
      recolorable			= TRUE
      overlay_file			= "Arrows/arrow-left.png"
      overlay_border	= { 0, 0, 0, 0 }
      overlay_stretch	= FALSE
      arrow_direction	= LEFT
    }
    image
    {
      function				= ARROW
      recolorable			= TRUE
      overlay_file			= "Arrows/arrow-right.png"
      overlay_border	= { 0, 0, 0, 0 }
      overlay_stretch	= FALSE
      arrow_direction	= RIGHT
    }
    image 
      {
     function			= BOX
	recolorable		= TRUE
	file        			= "Others/null.png"
	border      		= { 3, 3, 3, 3 }
	stretch         	= TRUE
      }
  }

}

class "GtkWidget"          style "default"

style "inactivetext"
{

engine "mist"
 	{
	}
}

widget_class "*.<GtkLabel>" style "inactivetext"
widget_class "*.<GtkCellLayout>" style "inactivetext"
#widget_class "*.<Combo>" style "inactivetext"

style "inactivetext2"
{


  fg[PRELIGHT] 		= "#ecedee"
  fg[NORMAL]    ="#dedede"
  
engine "mist"
 	{
	}
}

widget_class "*.<GtkMenuItem>.*" style "inactivetext2"

style "theme-menubar" = "theme-default"
{
	bg[NORMAL]	= "#262626"
}

#################### BUTTONS #######################

style "button"		= "default"
{

  engine "pixmap"
  {
    image
    {
      function			= BOX
      detail				= "buttondefault"
      recolorable		= TRUE
      file				= "Buttons/button-default.png"
      border			= {4, 4, 4, 4}
      stretch			= TRUE
    }
    image
    {
      function			= BOX
      state				= PRELIGHT
      recolorable		= TRUE
      file				= "Buttons/button-prelight.png"
      border			= { 4, 4, 4, 4 }
      stretch			= TRUE
    }
    image
    {
      function			= BOX
      state				= ACTIVE
      file				= "Buttons/button-pressed.png"
      border			= { 4, 4, 4, 4 }
      stretch			= TRUE
    }	
    image 
   {
     function			= BOX
     state				= INSENSITIVE
     file					= "Buttons/button-insensitive.png"
     border			= { 4, 4, 4, 4 }
     stretch			= TRUE
    }
    image 
    {
      function			= BOX
      file				= "Buttons/button-normal.png"		
      border			= { 4, 4, 4, 4 }
      stretch			= TRUE
     }	
  }
}




style "checkradiobutton" {
  engine "pixmap" {
    image 
	{
	function			= FLAT_BOX
	recolorable		= TRUE
	file					= "Check-Radio/highlight.png"
	border			= { 2, 5, 2, 5 }
	stretch			= TRUE
       }
    }
}

class "GtkRadioButton" style "checkradiobutton"
class "GtkCheckButton" style "checkradiobutton"

style "optionmenu"		= "default"

{
  engine "pixmap"
  {
    image
    {
      function			= BOX
      recolorable		= TRUE
      state				= PRELIGHT
      file				= "Combo/combo-prelight.png"
      border			= { 5, 5, 5, 5}
      stretch			= TRUE
    }
    image
    {
      function			= BOX
      recolorable		= TRUE
      state				= NORMAL
      file				= "Combo/combo-normal.png"
      border			= { 5, 5, 5, 5}
      stretch			= TRUE
    }

  image
    {
      function			= BOX
      recolorable		= TRUE
      state				= ACTIVE
      file				= "Combo/combo-pressed.png"
      border			= { 5, 5, 5, 5}
      stretch			= TRUE
    }
 image
    {
      function			= BOX
      recolorable		= TRUE
      state				= INSENSITIVE
      file				= "Combo/combo-inactive.png"
      border			= { 5, 5, 5, 5}
      stretch			= TRUE
    }
    image
    {
      function			= TAB
      state				= INSENSITIVE
      recolorable		= TRUE
      overlay_file		= "Combo/combo-arrow-insens.png"
      overlay_stretch	= FALSE
    }
    image
    {
      function				= TAB
      recolorable			= TRUE
      state					= NORMAL
      overlay_file			= "Combo/combo-arrow.png"
      overlay_border	= { 0, 0, 0, 0 }
      overlay_stretch	= FALSE
    }
  image
    {
      function				= TAB
      recolorable			= TRUE
      state					= PRELIGHT
      overlay_file			= "Combo/combo-arrow-prelight.png"
      overlay_border	= { 0, 0, 0, 0 }
      overlay_stretch	= FALSE
    }
  }
}

widget_class "*Combo*" style "optionmenu"

style "radiobutton"	= "default"
{
  engine "pixmap" 
    {
 image 
	{
            function        		= OPTION
            recolorable    		= TRUE
            state 				= NORMAL
            shadow          		= OUT
            overlay_file    		= "Check-Radio/option1.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= OPTION
            recolorable     		= TRUE
            state 				= PRELIGHT
            shadow          		= OUT
            overlay_file    		= "Check-Radio/option3.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= OPTION
            recolorable     		= TRUE
            state 				= ACTIVE
            shadow          		= OUT
            overlay_file    		= "Check-Radio/option3.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= OPTION
            recolorable     		= TRUE
            state 				= INSENSITIVE
            shadow         		= OUT
            overlay_file    		= "Check-Radio/option1.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= OPTION
            recolorable     		= TRUE
	    	  state 				= NORMAL
            shadow          		= IN
            overlay_file    		= "Check-Radio/option2.png"
            overlay_stretch 	= FALSE
        }
  image 
	{
            function        		= OPTION
            recolorable     		= TRUE
	    	  state 				= PRELIGHT
            shadow          		= IN
            overlay_file    		= "Check-Radio/option4.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= OPTION
            recolorable     		= TRUE
	    	  state 				= ACTIVE
            shadow          		= IN
            overlay_file    		= "Check-Radio/option4.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= OPTION
            recolorable     		= TRUE
	   	  state 				= INSENSITIVE
            shadow          		= IN
            overlay_file    		= "Check-Radio/option1.png"
            overlay_stretch 	= FALSE
        }
  image 
	{
          function        		= FLAT_BOX
          recolorable     		= TRUE
      	stretch				= TRUE
          file            			= "Check-Radio/checklight.png"
          border          		= { 2, 2, 2, 2 }
        }
    }
}


style "checkbutton"	= "default"
{
  engine "pixmap" 
    {
 image 
	{
            function        		= CHECK
            recolorable     		= TRUE
            state 				= NORMAL
            shadow          		= OUT
            overlay_file    		= "Check-Radio/check1.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= CHECK
            recolorable     		= TRUE
            state 				= PRELIGHT
            shadow          		= OUT
            overlay_file    		= "Check-Radio/check3.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= CHECK
            recolorable     		= TRUE
            state 				= ACTIVE
            shadow          		= OUT
            overlay_file    		= "Check-Radio/check3.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= CHECK
            recolorable     		= TRUE
            state 				= INSENSITIVE
            shadow          		= OUT
            overlay_file    		= "Check-Radio/check1.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= CHECK
            recolorable     		= TRUE
	    	  state 				= NORMAL
            shadow          		= IN
            overlay_file    		= "Check-Radio/check2.png"
            overlay_stretch 	= FALSE
        }
  image 
	{
            function        		= CHECK
            recolorable     		= TRUE
	    	  state 				= PRELIGHT
            shadow          		= IN
            overlay_file    		= "Check-Radio/check4.png"
            overlay_stretch 	= FALSE
        }
 image 
	{
            function        		= CHECK
            recolorable     		= TRUE
	    	  state 				= ACTIVE
            shadow          		= IN
            overlay_file    		= "Check-Radio/check4.png"
            overlay_stretch 	= FALSE
        }
 image 
    {
    function        		= CHECK
    recolorable     		= TRUE
       state 				= INSENSITIVE
       shadow          		= IN
       overlay_file   		= "Check-Radio/check1.png"
       overlay_stretch 	= FALSE
    }
    image 
    {
      function        	= FLAT_BOX
      recolorable     	= TRUE
      stretch			= TRUE
      file            		= "Check-Radio/checklight.png"
      border          	= { 2, 2, 2, 2 }
    }
  }
}


####################### ENTRY #####################xx

style "entry"			= "default"
{

  xthickness            			= 3
  ythickness            			= 2
  GtkWidget::interior_focus	= 0 

  engine "pixmap"
  {
    image
    {
      function			= FOCUS
      recolorable		= TRUE
      file			= "Shadows/entry-shadow-in.png"
      border			= { 3,3,3,3 }
      stretch			= TRUE
    }	
 image
    {
      function			= BOX
      recolorable		= TRUE
	 shadow			= IN
      state			= NORMAL
      file			= "Shadows/entry-shadow-in.png"
      border			= { 3,3,3,3 }
      stretch			= TRUE
    }	
image
    {
      function			= BOX
      recolorable		= TRUE
	 shadow			= OUT
      state			= NORMAL
      file			= "Shadows/text-entry.png"
      border			= { 3,3,3,3 }
      stretch			= TRUE
    }	
  image
   {
     function			= SHADOW
     detail			= "entry"
     shadow			= IN
     recolorable		= FALSE
     file			= "Shadows/text-entry.png"
     border			= { 3,3,3,3 }
     stretch			= TRUE
    }
  }
}

################x SPINBUTTONS ################

style "spinbutton"	= "default"
{

  xthickness            			= 3
  ythickness            			= 1
  GtkWidget::interior_focus	= 0

  engine "pixmap"
  {
    image
    {
      function			= ARROW
    }

############################# UP ######################xx
    image
    {
      function			= BOX
      state 			= NORMAL
      detail			= "spinbutton_up"
      recolorable		= TRUE
      file			= "Spin/spin-up-bg.png"
      border			= { 5, 5, 5, 5 }
      stretch			= TRUE
      overlay_file		= "Spin/arrow-up.png"
      overlay_stretch		= FALSE
    }
    image
    {
      function			= BOX
      state 			= PRELIGHT
      detail			= "spinbutton_up"
      recolorable		= TRUE
      file			= "Spin/spin-up-bg.png"
      border			= { 5, 5, 5, 5 }
      stretch			= TRUE
      overlay_file		= "Spin/arrow-up-prelight.png"
      overlay_stretch		= FALSE
    }
    image
    {
      function			= BOX
      state 			= INSENSITIVE
      detail			= "spinbutton_up"
      recolorable		= TRUE
      file			= "Spin/spin-up-bg.png"
      border			= { 5, 5, 5, 5 }
      stretch			= TRUE
      overlay_file		= "Spin/arrow-up-disable.png"
      overlay_stretch		= FALSE
    }
    image
    {
      function			= BOX
      state 			= ACTIVE
      detail			= "spinbutton_up"
      recolorable		= TRUE
      file			= "Spin/spin-up-bg.png"
      border			= { 5, 5, 5, 5 }
      stretch			= TRUE
    }

########################x DOWN ########################
    image
    {
      function			= BOX
      state 			= NORMAL
      detail			= "spinbutton_down"
      recolorable		= TRUE
      file			= "Spin/spin-down-bg.png"
      border			= { 5, 5, 5, 5 }
      stretch			= TRUE
      overlay_file		= "Spin/arrow-down.png"
      overlay_stretch		= FALSE
    }
    image
    {
      function			= BOX
      state 			= PRELIGHT
      detail			= "spinbutton_down"
      recolorable		= TRUE
      file			= "Spin/spin-down-bg.png"
      border			= { 5, 5, 5, 5 }
      stretch			= TRUE
      overlay_file		= "Spin/arrow-down-prelight.png"
      overlay_stretch		= FALSE
    }
    image
    {
      function			= BOX
      state 			= INSENSITIVE
      detail			= "spinbutton_down"
      recolorable		= TRUE
      file			= "Spin/spin-down-bg.png"
      border			= { 5, 5, 5, 5 }
      stretch			= TRUE
      overlay_file		= "Spin/arrow-down-disable.png"
      overlay_stretch		= FALSE
    }
    image
    {
      function			= BOX
      state 			= ACTIVE
      detail			= "spinbutton_down"
      recolorable		= TRUE
      file			= "Spin/spin-down-bg.png"
      border			= { 5, 5, 5, 5 }
      stretch			= TRUE
      overlay_file		= "Spin/arrow-down-prelight.png"
      overlay_stretch		= FALSE
    }
########################## SPIN ENTRY ###########################
    image
    {
      function			= FOCUS
      recolorable		= TRUE
      file			= "Spin/text-entry-focus.png"
      border			= { 3,3,3,3 }
      stretch			= TRUE
    }	
    image
    {
      function			= SHADOW
      detail			= "entry"
      shadow			= IN
      recolorable		= FALSE
      file			= "Spin/text-entry.png"
      border			= { 3,3,3,3 }
      stretch			= TRUE
    }
  }
}


############################# SCROLLBAR ####################

style "scrollbar" = "default"
{
  engine "pixmap" 
  {
    image 
    {
      function			= BOX
      recolorable		= TRUE
      detail				= "trough"
      file				= "Scrollbars/trough-scrollbar-horiz.png"
      border			= { 19, 19, 2, 2 }
      stretch			= TRUE
      orientation		= HORIZONTAL
    }
    image 
    {
      function			= BOX
      recolorable		= TRUE
      detail				= "trough"
      file				= "Scrollbars/trough-scrollbar-vert.png"
      border			= { 2, 2, 19, 19 }
      stretch			= TRUE
      orientation		= VERTICAL
    }

###########x SLIDERS ##################x

  image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= NORMAL
      file					= "Scrollbars/slider-horiz.png" 
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= HORIZONTAL
    }
  image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= ACTIVE
      shadow				= IN
      file					= "Scrollbars/slider-horiz.png" 
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= HORIZONTAL

    }
    image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= PRELIGHT
      file					= "Scrollbars/slider-horiz-prelight.png" 
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= HORIZONTAL

    }
    image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= INSENSITIVE
      file					= "Scrollbars/slider-horiz-insens.png"
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= HORIZONTAL

    }

#############x verticals################xx

 image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= NORMAL
      file					= "Scrollbars/slider-vert.png" 
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= VERTICAL

    }
   image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= ACTIVE
      shadow				= IN
      file					= "Scrollbars/slider-vert.png" 
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= VERTICAL

    }
    image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= PRELIGHT
      file					= "Scrollbars/slider-vert-prelight.png" 
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= VERTICAL

    }
    image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= INSENSITIVE
      file					= "Scrollbars/slider-vert-insens.png"
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= VERTICAL

    }

###########x END SLIDERS ##################x

########### Steppers ######################
#### UP #######
    image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= NORMAL
      file					= "Scrollbars/stepper-up.png"
      stretch				= TRUE
      arrow_direction	= UP
    }
 image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= PRELIGHT
      file					= "Scrollbars/stepper-up-prelight.png"
      stretch				= TRUE
      arrow_direction	= UP
    }
 image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= ACTIVE
      file					= "Scrollbars/stepper-up-prelight.png"
      stretch				= TRUE
      arrow_direction	= UP
    }
 image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= INSENSITIVE
      file					= "Scrollbars/stepper-up-insens.png"
      stretch				= TRUE
      arrow_direction	= UP
    }

 ######### DOWN ############

    image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= NORMAL
      file					= "Scrollbars/stepper-down.png"
      stretch				= TRUE
      arrow_direction	= DOWN
    }
 image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= PRELIGHT
      file					= "Scrollbars/stepper-down-prelight.png"
      stretch				= TRUE
      arrow_direction	= DOWN
    }
 image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= ACTIVE
      file					= "Scrollbars/stepper-down-prelight.png"
      stretch				= TRUE
      arrow_direction	= DOWN
    }
 image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= INSENSITIVE
      file					= "Scrollbars/stepper-down-insens.png"
      stretch				= TRUE
      arrow_direction	= DOWN
    }

############ RIGHT ################

    image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= NORMAL
      file					= "Scrollbars/stepper-right.png"
      stretch				= TRUE
      arrow_direction	= RIGHT
    }
 image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= PRELIGHT
      file					= "Scrollbars/stepper-right-prelight.png"
      stretch				= TRUE
      arrow_direction	= RIGHT
    }
 image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= ACTIVE
      file					= "Scrollbars/stepper-right-prelight.png"
      stretch				= TRUE
      arrow_direction	= RIGHT
    }
 image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= INSENSITIVE
      file					= "Scrollbars/stepper-right-insens.png"
      stretch				= TRUE
      arrow_direction	= RIGHT
    }

############### LEFT ###################

    image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= NORMAL
      file					= "Scrollbars/stepper-left.png"
      stretch				= TRUE
      arrow_direction	= LEFT
    }
  image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= PRELIGHT
      file					= "Scrollbars/stepper-left-prelight.png"
      stretch				= TRUE
      arrow_direction	= LEFT
    }
  image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= ACTIVE
      file					= "Scrollbars/stepper-left-prelight.png"
      stretch				= TRUE
      arrow_direction	= LEFT
    }
  image 
    {
      function				= STEPPER
      recolorable			= TRUE
      state					= INSENSITIVE
      file					= "Scrollbars/stepper-left-insens.png"
      stretch				= TRUE
      arrow_direction	= LEFT
    }
  }
}

##################### PROGRESSBAR ###################x

style "progressbar" {
  
  fg[PRELIGHT]       		= "#333333"
  
  xthickness            		= 1
  ythickness            		= 1

  engine "pixmap" 
  {
    image
    {
      function				= BOX
      detail					= "trough"
      file					= "ProgressBar/trough-progressbar-horiz.png"
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
    }
    image
    {
      function				= BOX
      detail					= "bar"
      file					= "ProgressBar/progressbar-horiz.png"
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= HORIZONTAL
    } 
    image
    {
      function				= BOX
      detail					= "bar"
      file					= "ProgressBar/progressbar-vert.png"
      border				= { 2, 2, 2, 2 }
      stretch				= TRUE
      orientation			= VERTICAL
    }
  }
}

############################# RANGE #######################

style "range"			= "default"
{	
  engine "pixmap" 
  {
    image 
    {
      function			= BOX
      recolorable		= TRUE
      detail				= "trough"
      file				= "Range/trough-horizontal.png"
      border			= { 10, 10, 1, 19 }
      stretch			= TRUE
      orientation		= HORIZONTAL
    }	
    image 
    {
      function			= BOX
      recolorable		= TRUE
      detail				= "trough"
      file				= "Range/trough-vertical.png"
      border			= { 0, 19, 10, 10 }
      stretch			= TRUE
      orientation		= VERTICAL
    }

############### the sliders ###############

    image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= NORMAL
      file					= "Range/null.png"
      border				= { 0, 0, 0, 0 }
      stretch				= TRUE
      overlay_file			= "Range/slider-horiz.png"
      overlay_stretch	= FALSE
      orientation			= HORIZONTAL
    }
    image 
    {
      function				= SLIDER
      recolorable			= TRUE
     state           			= PRELIGHT
      file					= "Range/null.png"
      border				= { 0, 0, 0, 0 }
      stretch				= TRUE
      overlay_file			= "Range/slider-horiz-prelight.png"
      overlay_stretch	= FALSE
      orientation			= HORIZONTAL
    }
    image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= INSENSITIVE
      file					= "Range/null.png"
      border				= { 0, 0, 0, 0 }
      stretch				= TRUE
      overlay_file			= "Range/slider-horiz.png"
      overlay_stretch	= FALSE
      orientation			= HORIZONTAL
    }

######################### VERTICAL ###########################

    image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= NORMAL
      file					= "Range/null.png"
      border				= { 0, 0, 0, 0 }
      stretch				= TRUE
      overlay_file			= "Range/slider-vert.png"
      overlay_stretch	= FALSE
      orientation			= VERTICAL
    }
    image 
    {
      function				= SLIDER
      recolorable			= TRUE
     state           			= PRELIGHT
      file					= "Range/null.png"
      border				= { 0, 0, 0, 0 }
      stretch				= TRUE
      overlay_file			= "Range/slider-vert-prelight.png"
      overlay_stretch	= FALSE
      orientation			= VERTICAL
    }
    image 
    {
      function				= SLIDER
      recolorable			= TRUE
      state           		= INSENSITIVE
      file					= "Range/null.png"
      border				= { 0, 0, 0, 0 }
      stretch				= TRUE
      overlay_file			= "Range/slider-vert.png"
      overlay_stretch	= FALSE
      orientation			= VERTICAL
    }
  }
}

################### TOOLBAR ###########################

style "toolbar"
{
	engine "pixmap"
	{
		image
		{
			function	= BOX
			file		= "Others/null.png"
			border	= { 4, 4, 4, 4}
			stretch	= TRUE
    		}
 	}
}
widget_class "*BonoboDockItem" style "toolbar"
class "*BonoboDockItem" style "toolbar"

widget_class "*HandleBox" style "toolbar"
class "*HandleBox" style "toolbar"

widget_class "*Toolbar" style "toolbar"
class "*Toolbar" style "toolbar"

##################### TOOLBAR BUTTONS ###############################

style "toolbuttons" = "default"
{
  xthickness            			= 1
  ythickness            			= 1
  GtkWidget::focus_padding = 2

	engine "pixmap" {
      
image
		{
			function        		= BOX
			recolorable     		= TRUE
			state					= NORMAL
			file            			= "Toolbar/toolbutton-normal.png"
			border          		= { 5, 5, 5, 5 }
			stretch         		= TRUE
		}
image
		{
			function        		= BOX
			recolorable     		= TRUE
			state					= PRELIGHT
			file            			= "Toolbar/toolbutton-prelight.png"
			border          		= { 5, 5, 5, 5 }
			stretch         		= TRUE
		}
image
		{
			function        		= BOX
			recolorable     		= TRUE
			state					= ACTIVE
			file            			= "Toolbar/toolbutton-pressed.png"
			border          		= { 5, 5, 5, 5 }
			stretch         		= TRUE
		}  
image
		{
			function        		= BOX
			recolorable     		= TRUE
			state					= INSENSITIVE
			file            			= "Toolbar/toolbutton-normal.png"
			border          		= { 5, 5, 5, 5 }
			stretch         		= TRUE
		}  
	}
}
widget_class "*Tool*GtkToggleButton" style "toolbuttons"
widget_class "*Tool*GtkButton" style "toolbuttons"

style "menubar" = "default"
{
  bg[NORMAL] = "#2d2d2d"
  fg[NORMAL] = "#909090"
  fg[PRELIGHT] = "#dedede"
  text[PRELIGHT] = "#d64937"
  fg[SELECTED]      = "#dedede"
  text[SELECTED]      = "#dedede"

xthickness            = 0
ythickness            = 0
   
}

################### PANEL GRAPHICS #################################
################### MENU #################################

style "menu"			= "default"
{
xthickness			= 3
ythickness			= 1

  engine "pixmap"
  {
    image
    {
      function			= BOX
      recolorable    	= TRUE
      detail				= "menu"
      file				= "Menu-Menubar/menu.png"
      border			= { 34, 3, 3, 3 }
      stretch			= TRUE
    }
  }
}

########################### Menuitem #############################
style "menuitem"	= "default"
{
  xthickness				= 1
  fg[PRELIGHT] 		= "#ecedee"  
   
   engine "pixmap"
  {
    image
    {
      function			= BOX
      recolorable		= TRUE
      file				= "Menu-Menubar/menuitem.png"
      border			= { 1, 1, 1, 1 }
      stretch			= TRUE
    }
    image
    {
      function				= ARROW
      recolorable			= TRUE
      state					= NORMAL
      overlay_file			= "Arrows/arrow-right-norm.png"
      overlay_stretch	= FALSE
      arrow_direction	= RIGHT
    }
  image
    {
      function				= ARROW
      recolorable			= TRUE
      state					= PRELIGHT
      overlay_file			= "Arrows/arrow-right-prelight.png"
      overlay_stretch	= FALSE
      arrow_direction	= RIGHT
    }
  }
}


style "tearoffmenuitem"	= "menuitem"
{
  engine "pixmap"
  {
    image
    {
      function				= ARROW
      file					= "Arrows/arrow-left.png"
      stretch				= TRUE
      arrow_direction	= LEFT
    }
  }
}

style "notebook"		= "default"
{

  xthickness            			= 2
  ythickness            			= 2
  engine "pixmap" 
    {
    image 
      {
     function			= EXTENSION
	recolorable		= TRUE
	state				= ACTIVE
	file					= "Tabs/tab-bottom.png"
	border			= { 4,4,4,4}
	stretch			= TRUE
	gap_side			= TOP
      }
    image 
      {
     function			= EXTENSION
	recolorable		= TRUE
	state				= ACTIVE
	file					= "Tabs/tab-top.png"
	border			= {  4,4,4,4}
	stretch			= TRUE
	gap_side			= BOTTOM
      }
    image 
      {
     function			= EXTENSION
	recolorable		= TRUE
	state				= ACTIVE
	file					= "Tabs/tab-left.png"
	border			= {  4,4,4,4}
	stretch			= TRUE
	gap_side			= RIGHT
      }
    image 
      {
     function			= EXTENSION
	recolorable		= TRUE
	state				= ACTIVE
	file					= "Tabs/tab-right.png"
	border			= { 4,4,4,4}
	stretch			= TRUE
	gap_side			= LEFT
      }	
    image 
      {
     function			= EXTENSION
	recolorable		= TRUE
	file					= "Tabs/tab-top-active.png"
	border			= { 4,4,4,4}
	stretch			= TRUE
	gap_side			= BOTTOM
      }
    image 
      {
     function			= EXTENSION
	recolorable		= TRUE
	file					= "Tabs/tab-bottom-active.png"
	border			= { 4,4,4,4}
	stretch			= TRUE
	gap_side			= TOP
      }
    image 
      {
     function			= EXTENSION
	recolorable		= TRUE
	file					= "Tabs/tab-left-active.png"
	border			= {  4,4,4,4}
	stretch			= TRUE
	gap_side			= RIGHT
      }
    image 
      {
     function			= EXTENSION
	recolorable		= TRUE
	file					= "Tabs/tab-right-active.png"
	border			= {  4,4,4,4}
	stretch			= TRUE
	gap_side			= LEFT
      }

# How to draw boxes with a gap on one side (ie the page of a notebook)

    image 
      {
     function				= BOX_GAP
	recolorable			= TRUE
	file				= "Tabs/notebook.png" 
	border				= { 5, 5, 5, 5 }
	stretch				= TRUE
	gap_file			= "Tabs/gap-top.png"
	gap_border     			= { 5, 5, 5, 5 }
	gap_start_file			= "Others/null.png"
	gap_start_border		= { 0, 0, 0, 0 }
	gap_end_file			= "Others/null.png"
	gap_end_border			= { 0, 0, 0, 0 }
	gap_side			= TOP
      }
    image 
      {
     function				= BOX_GAP
	recolorable			= TRUE
	file				= "Tabs/notebook.png"
	border				= { 5, 5, 5, 5 }
	stretch				= TRUE
	gap_file			= "Tabs/gap-bottom.png"
	gap_border			= { 5, 5, 5, 5 }
	gap_start_file			= "Others/null.png"
	gap_start_border		= { 0, 0, 0, 0 }
	gap_end_file			= "Others/null.png"
	gap_end_border			= { 0, 0, 0, 0 }
	gap_side			= BOTTOM
      }
    image 
      {
     function				= BOX_GAP
	recolorable			= TRUE
	file				= "Tabs/notebook.png"
	border				= { 5, 5, 5, 5 }
	stretch				= TRUE
	gap_file			= "Tabs/gap-left.png"
	gap_border			= { 5, 5, 5, 5 }
	gap_start_file			= "Others/null.png"
	gap_start_border		= { 0, 0, 0, 0 }
	gap_end_file			= "Others/null.png"
	gap_end_border			= { 0, 0, 0, 0 }
	gap_side			= LEFT
      }
    image 
      {
     function				= BOX_GAP
	recolorable			= TRUE
	file				= "Tabs/notebook.png" 
	border				= { 5, 5, 5, 5 }
	stretch				= TRUE
	gap_file			= "Tabs/gap-right.png"
	gap_border			= { 5, 5, 5, 5 }
	gap_start_file			= "Others/null.png"
	gap_start_border		= { 0, 0, 0, 0 }
	gap_end_file			= "Others/null.png"
	gap_end_border			= { 0, 0, 0, 0 }
	gap_side			= RIGHT
      }

# How to draw the box of a notebook when it isnt attached to a tab

    image 
      {
     function			= BOX
	recolorable		= TRUE
	file					= "Tabs/notebook.png"
	border			= { 6,6,6,6 }
	stretch			= TRUE
      }
  }
}

style "tooltips"	= "default"
{
  bg[NORMAL]		= "#ffffff"
}

##################### RULER ##################

style "ruler"		= "default"
{
  engine "pixmap" 
  {
    image 
    {
        function		= BOX
	recolorable		= TRUE
	detail			= "vruler"
	file			= "Others/ruler.png"
	border			= { 2, 2, 2, 2 }
	stretch			= TRUE
    }
    image 
    {
        function		= BOX
	recolorable		= TRUE
	detail			= "hruler"
	file			= "Others/ruler.png"
	border			= { 2, 2, 2, 2 }
	stretch			= TRUE
    }
  }
}

################# HANDLES ###################x


style "handlebox"	= "default"
{
  engine "pixmap"
  {
    image
    {
      function				= HANDLE
      recolorable			= TRUE
      overlay_file			= "Others/null.png"
#      overlay_file			= "Handles/handle-v.png"
      overlay_stretch	= FALSE
      orientation			= VERTICAL
    }
    image
    {
      function				= HANDLE
      overlay_file			= "Others/null.png"
#      overlay_file			= "Handles/handle-h.png"
      overlay_stretch 	= FALSE
      orientation			= HORIZONTAL
    }
  }
}

style "flat" 		= "default"
{
  engine "pixmap"
  {
    image
    {
      function		= SHADOW
    }
  }
}

style "layout"	= "default"
{
  engine "pixmap"
  {
   image
   {
     function		= SHADOW
     detail			= "entry"
     shadow		= IN
     recolorable	= FALSE
     file			= "Shadows/text.png"
     border		= { 1, 1, 1, 1 }
     stretch		= TRUE
   }
    image
    {
      function		= BOX
      detail		= "button"
      state			= NORMAL
      file			= "Buttons/button-normal.png"
      recolorable	= TRUE
      border		= { 2, 3, 2, 3 }
      stretch		= TRUE
    }
  }
}

##################### STATUSBAR ###############################

style "statusbar"		= "default"
{

#	xthickness = 1
#	ythickness = 1
	
	engine "pixmap" 
	{
	    image
	    {
	     	function		= RESIZE_GRIP
		recolorable	= TRUE
		#state			= NORMAL
		detail		= "statusbar"
		overlay_file	= "Handles/resize-grip.png"
		
		overlay_border	= {0,0,0,0 }
		overlay_stretch	= FALSE
	    }
      }
}

# This prevents Sodipodi from crashing while opening the
# Object-Style dialog.

style "unstyle"
{
  engine ""
  {
  }
}

# recognizable pressed toggle buttons
# SPIcons seem to erase the background first. That's why I can't use
# the button style.

style "SPbutton"
{
  engine "pixmap"
  {
    image
    {
      function		= BOX
      shadow		= IN
      recolorable	= TRUE
      file			= "Shadows/shadow-out.png"
      border		= { 2, 2, 2, 2 }
      stretch		= TRUE
    }
    image
    {
      function		= BOX
    }
  }
}




# widget styles

class "GtkButton"          		style "button"
class "GtkRadioButton"     		style "radiobutton"
class "GtkRadioMenuItem"    		style "radiobutton"
class "GtkCheckButton"     		style "checkbutton"
class "GtkCheckMenuItem"   		style "checkbutton"
class "GtkOptionMenu"			style "optionmenu"
class "GtkCombo*"      			style "optionmenu"
class "*Font*"      			style "optionmenu"
class "GtkEntry"           		style "entry"
class "GtkOldEditable" 			style "entry"
class "GtkSpinButton"   	 	style "spinbutton"
class "GtkRuler"           		style "ruler"
class "GtkScrollbar"       		style "scrollbar"
class "GtkStatusbar"			style "statusbar"
class "GtkProgressBar"     		style "progressbar"
class "GtkRange"         		style "range"
class "GtkMenu"       			style "menu"
class "GtkMenuBar*" 		     	style "menubar"
widget_class "*MenuBar.*" 		style "menubar"
widget_class "*.<MenuItem>."		style "menuitem"
class "GtkMenuItem"           		style "menuitem"
class "GtkTearoffMenuItem"		style "menuitem"
class "GtkNotebook"      		style "notebook"
class "GtkToolbar"       		style "flat"					
class "GtkHandleBox"    		style "handlebox"
class "GtkEventBox"    			style "flat"
class "GtkPaned"       			style "handlebox"
class "GtkLayout"     			style "layout"
class "SPButton"         			style "SPbutton"
widget "gtk-tooltips"  			style "tooltips"

# prevent Sodipodi from crashing
class "SPColorSlider" 			style "unstyle"

