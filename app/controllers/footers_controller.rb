class FootersController < InheritedResources::Base

  private

    def footer_params
      params.require(:footer).permit(:email, :phone, :v_street, :v_zip_code, :v_state, :v_country, :m_p_o_box, :m_zip_code, :m_state, :m_country, :facebook_url, :twitter_url, :linkedin_url, :pinterest_url)
    end
end

