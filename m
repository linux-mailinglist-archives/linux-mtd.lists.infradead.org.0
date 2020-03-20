Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B17A18CCCA
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Mar 2020 12:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6BfOjXr6Zp1MJVHNXoUsXEH0rfa7D0iFSNAh8SN5bvw=; b=Col
	hJly9ojMf4PJAsoVb02PEm0Tk/xosAQaymT2M2r5aML19IXmegfYrGe6bJMTOvt2MjOX2oqXICUhD
	76F4C27dmXBflgg/CgdjBdEJvpbfsa1R/xGdruIZxKFWfDl5IgIRFQSYmTdhImo1cLh5F5pV1y+Nd
	UnCbMeYG+RGvpS9OVUE2PNze+OGp4eoGb9HDMfoqqyFVZ725EzlPAztiqb9oJua9Xavp9PtA818ex
	CWWZ0uT3ASwM25wP2akoW4Eow8cwkTLK0TUvFvrDgynkYSWOwEaPW3kjqlJSWYJVAf3dxDGoKffyH
	O9tTHBl7ueGmU+56lyhS5AjpEpbw1cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFjP-00053g-0X; Fri, 20 Mar 2020 11:22:27 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFjI-00052p-2a
 for linux-mtd@lists.infradead.org; Fri, 20 Mar 2020 11:22:21 +0000
Received: by mail-ot1-x344.google.com with SMTP id 111so5533521oth.13
 for <linux-mtd@lists.infradead.org>; Fri, 20 Mar 2020 04:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6w+aFSJ+2vZ3lBtg9xVXLOFVqSNoMPd625E7FNYobb8=;
 b=Pf/weUAfOIiJrSxirpBihZi6rDPdhyQPdqV31VjwvFYCZrXzvBkOQEdBeDD+fX+N79
 qt9tmCm3FjbnRdoqGWpCa20Uk5e1bhGZ/0wJS+wlw72uJad71tcUBjcoeSwEUuruvXcA
 84tRSqCB2Tph2tBoxOjpJV1x/Ea/J8W5HzqXPv65IQxNfJKY1At/wswC5dSURMa29aoD
 8zo4+xruOlzLz3L4vwtTRqRx9ghKaKGisLI9y4mD1Sh4zDOfgU90m4NEBHVFFDUWfnA4
 NQH6UOJvtwAQlpwMApniIE8f8/D2Yc9OrACifoz9y0lKr31XZXe0ZPRAGdpIASeffTj+
 mh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6w+aFSJ+2vZ3lBtg9xVXLOFVqSNoMPd625E7FNYobb8=;
 b=Pjs+nHj52XC9OVWTgxSXl/4Rd53WHrXHHsdrCOYIkzMjsLO9zZpWQ9NBBIYCqYgp4Z
 IgO1HQIZDBW6CAGs0yP0XXs8HsiR1SZEpns9cQ99yzBDJLjQIFEM909ABKmLDotyyI9L
 QHWypA1t3rofsP4hwHgqRgVLW91cigiGVyCf2VOsuvh1KXmdVGMeASPabomOctk8ywSu
 NLofw70N6bZmiRpLx73RNHN2JjGTXXFPejq4f15CID8ud6Qw41RFa2rLegwEinNkDYIs
 Lnk5beuaC4wj81e+cqAnMBvzkVrFwrPz6ceKDmhEIzZAHU2Uerv7WAeA92i5h7pY0NYD
 v34Q==
X-Gm-Message-State: ANhLgQ0cunrl6R5G8iiFDiv5go86uzixwHNP8euSEuoP5AeXleKPIMtS
 3sgyAZG/RvDdW4uOe0J7+xEV8qvAyOwZIbwn2nw=
X-Google-Smtp-Source: ADFU+vsduRj3hrCf9DhK2bNvKDpHo5/uVyU9cffULt+Uh+xPEULP1CtCYadaVmwGXRoaldTKMt0qeMlG0eCXLSlrUpo=
X-Received: by 2002:a05:6830:3151:: with SMTP id
 c17mr6555852ots.310.1584703339020; 
 Fri, 20 Mar 2020 04:22:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6838:40c6:0:0:0:0 with HTTP; Fri, 20 Mar 2020 04:22:18
 -0700 (PDT)
From: ECOWAS COMMITEE <ecowasmonitoringcommitteeabj@gmail.com>
Date: Fri, 20 Mar 2020 11:22:18 +0000
Message-ID: <CAHHubrYe0Tme3z6y4=35rwkeKtHK_aNvGc957sh9eWYyPOf1Vg@mail.gmail.com>
Subject: HAPPY SURVIVAL OF CORONAVIRUS
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_042220_120303_3F721F82 
X-CRM114-Status: UNSURE (  -3.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ecowasmonitoringcommitteeabj[at]gmail.com]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Dear Sir/Madam

HAPPY SURVIVAL OF CORONAVIRUS

We the West African Monitoring Committee of the West African Economic
Community(ECOWAS)are contacting you for a business transaction which
we feel will be of great interest to you.

Our duty is to see to the coming in and out of funds into this sub
region.There is a fund which we confiscated worth of $12.5 million
dollars.We will like you to receive this fund on your name in your
account and as well helping us in the investment.

You are advised to contact us as soon as you get this message for
details of the transaction if you find it interesting.

Best Regards,

Mr John Aka

Chairman
ECOWAS
West African Monitoring Committee
Tel 00225 6716 6756
Abidjan Cote D'Ivoire

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
