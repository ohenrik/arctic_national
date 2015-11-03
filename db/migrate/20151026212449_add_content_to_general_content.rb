class AddContentToGeneralContent < ActiveRecord::Migration
  def up

    GeneralContent.create(
      key: 'top_section_text',
      key_lable: 'Top section text',
      value: 'Passion is the energy in development and evolution. Our passion is providing great, affordable beverages to life loving people.',
      content_type: 'text')

    GeneralContent.create(
      key: 'about_text',
      key_lable: 'About',
      value: '<p>Passion is the energy in development and evolution. Our passion is providing great affordable wine to life loving people. Add wealth of experience, mix unique individuals and top this off with entrepreneurship and financial strength, then you have the key components of Arctic Beverage.</p>
      <p>Our competence and experience span from retail markets in food/beverage, sports, fashion and photo; operational and executive experience from the Aviation Industry; legal background and off course Wine and Spirits.</p>',
      content_type: 'text')

    # GeneralContent.create(
    #   key: 'about_text',
    #   key_lable: 'About',
    #   value: '<p>Passion is the energy in development and evolution. Our passion is providing great affordable wine to life loving people. Add wealth of experience, mix unique individuals and top this off with entrepreneurship and financial strength, then you have the key components of Arctic Beverage.</p>
    #   <p>Our competence and experience span from retail markets in food/beverage, sports, fashion and photo; operational and executive experience from the Aviation Industry; legal background and off course Wine and Spirits.</p>',
    #   content_type: 'text')

  end
  def down
    GeneralContent.find_by(key: 'top_section_text').destroy
    GeneralContent.find_by(key: 'about_text').destroy
  end
end
