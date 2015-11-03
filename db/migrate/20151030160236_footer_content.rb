class FooterContent < ActiveRecord::Migration
  def up

    GeneralContent.create(
      key: 'footer_email',
      key_lable: 'Email',
      value: 'post@articbeverage.com',
      content_type: 'string')

    GeneralContent.create(
      key: 'footer_phone',
      key_lable: 'Phone',
      value: '+47 911 61 062',
      content_type: 'string')

    GeneralContent.create(
      key: 'footer_visit_street',
      key_lable: 'Visit: Street',
      value: 'Fridtjof Nansens vei 3',
      content_type: 'string')

    GeneralContent.create(
      key: 'footer_visit_zip',
      key_lable: 'Visit: Zip code',
      value: '1366',
      content_type: 'string')

    GeneralContent.create(
      key: 'footer_visit_state',
      key_lable: 'Visit: State',
      value: 'Lysaker',
      content_type: 'string')

    GeneralContent.create(
      key: 'footer_visit_country',
      key_lable: 'Visit: Country',
      value: 'Norway',
      content_type: 'string')

    GeneralContent.create(
      key: 'footer_mail_box',
      key_lable: 'Mail: P.O. Box',
      value: '238',
      content_type: 'string')

    GeneralContent.create(
      key: 'footer_mail_zip',
      key_lable: 'Mail: Zip code',
      value: '1326',
      content_type: 'string')

    GeneralContent.create(
      key: 'footer_mail_state',
      key_lable: 'Mail: State',
      value: 'Lysaker',
      content_type: 'string')

    GeneralContent.create(
      key: 'footer_mail_country',
      key_lable: 'Mail: Country',
      value: 'Norway',
      content_type: 'string')

  end
  def down
    GeneralContent.find_by(key: 'footer_email').destroy
    GeneralContent.find_by(key: 'footer_phone').destroy
    GeneralContent.find_by(key: 'footer_visit_street').destroy
    GeneralContent.find_by(key: 'footer_visit_zip').destroy
    GeneralContent.find_by(key: 'footer_visit_state').destroy
    GeneralContent.find_by(key: 'footer_visit_country').destroy
    GeneralContent.find_by(key: 'footer_mail_box').destroy
    GeneralContent.find_by(key: 'footer_mail_zip').destroy
    GeneralContent.find_by(key: 'footer_mail_state').destroy
    GeneralContent.find_by(key: 'footer_mail_country').destroy
  end
end
