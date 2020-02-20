Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964B1165AB1
	for <lists+linux-mtd@lfdr.de>; Thu, 20 Feb 2020 10:58:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+6Xv2xw1SL9lJgSapNtk5Do1Wsz8JzzNSk4lYI8tnlc=; b=Yjz5XJIiDuLz2u
	g4mJUms1zBgXT1u/CZ6+KbXDMLxJLYLJRPIhMtXmLlBF0SQlO7A1DT5fB9cBNhz5rKpIUhU/nkcmI
	PJ3g3+ys3kvXuXVn3bnE0IsUEPl9NvGYaBEZZwzy/6a7ANZotRL4FTai2g1f/Cc8BC23351geO/WW
	1p8Io/yUFv5kpGGPb+GS8jbiOfR2VFU9n/VgjdfbIP7CJTt6POWYgzw7cY7o5DXof/ZQ/96tkgwLg
	zC8pB1oPct84oIfIcAaHaLa7IBH2U3H6lop9pjtdy6QfdkH8OuRaVP5yDaptVhPd89+8EL01rwadP
	DjJNDXZ2FCre4afzO1SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iav-0002B7-HD; Thu, 20 Feb 2020 09:58:09 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iam-00029m-R1
 for linux-mtd@lists.infradead.org; Thu, 20 Feb 2020 09:58:02 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n96so667611pjc.3
 for <linux-mtd@lists.infradead.org>; Thu, 20 Feb 2020 01:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=mUAqUJgbrgUtls655gn0TGQZLv0rx07jKbVHJX+XhhWtv1ZpqvxZjpjPyMjz8p5TmT
 zJNzewMR9NpX7zhNQe+NXg2hf3MycChvoqYPmcUC2PzA1INAc/zv26kQyOQc/qi4Rd1Z
 fxY+dcWMIgxbw2tij+cWzWRii26OwbIwPPHliSMZJ3PUCugcnfrWGezAwafP4fFrrfh8
 Ohbpwho3ixTnIGaNtLX8G/jBzXPWjjCOM44dQ4G5f3UxUqe0y/AXnOrwkRNMFA135dvr
 daLqJaKXSrsHtMSHI8mfCSPjlZBXDqwIvP6owQXPnglJ3PqWxshNrhE1rIFFp3QqSgBT
 KITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xsUbPWAhYtsZRE8nHbpZ90/dMr+6ACJOvf/o3gzcGwM=;
 b=riwSoRR+z9k1d/scxvNyzCmQOo03h8PLkAzfOsSX1vvQW9CJ+tgceOwD2z7+IfI+LW
 Del/MRVjH96IdSTqcWa8+HGnUa1sX4aMcZ/QBYxtUHWtfCLvLiRNDYhjoqeXes0ML5I9
 e1ddbv+G+CrqosheuEOEJCwY+troc20//1jYud6W22W9DjXuHL+rBCYI28irPqYy8Qip
 Ia5GMiugyeeF5tVVC/Xnsov3GSbpe0Ynnjz69bkZQeSTowGKF14qGLzWcjEWX8Q+FIJW
 FzKg4ewsoO81QXZ6URW8eeRFfkVf1GmoCFwXVfkTrM2b+0IOme73v/GI2p1aX1qNc93n
 I4YQ==
X-Gm-Message-State: APjAAAVFphSB1VLBj+kMpvn+/Qva8iG5Ou0H78IaKE3XklYZBGLTuKKa
 Qjcin351efUydtpxo1qrzvIng3FTb842AGP3fTU=
X-Google-Smtp-Source: APXvYqwHOqf+XdnKXvd7wsLpcvvn/ZLtp2F0WyhXjvQrlv3vxaXfAxeS/mSfPPUGGMcd2SNGEHRaWZJfk0TY+cQn8Mc=
X-Received: by 2002:a17:902:7b94:: with SMTP id
 w20mr30383898pll.257.1582192679164; 
 Thu, 20 Feb 2020 01:57:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:90f:0:0:0:0 with HTTP; Thu, 20 Feb 2020 01:57:58
 -0800 (PST)
From: "Mrs. Susan S. Cage" <drgoodluckebelejonathan061@gmail.com>
Date: Thu, 20 Feb 2020 01:57:58 -0800
Message-ID: <CALjo5=9PtwaBLZjXLdktzgyexn2wK5EXYpJNfhVNQPB+3ArAmA@mail.gmail.com>
Subject: Attention:Beneficiary
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_015800_894699_95A997E3 
X-CRM114-Status: UNSURE (  -4.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [drgoodluckebelejonathan061[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [cagesusan199[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [drgoodluckebelejonathan061[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DEAR_BENEFICIARY       BODY: Dear Beneficiary:
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.0 HK_SCAM                No description available.
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: cagesusan199@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

-- 
Dearest Friend,

Sorry for invading your privacy, my name is Susan S. Cage I am 81
years, citizen of United States and presently in hospital undergoing
chromatography for bronchogenic carcinomas (Lung cancer) which
affected both Lungs. The doctors said I have few days to live because
the cancer has now affected my brain.

My late husband left Fifteen Million, Five Hundred British Pounds
Sterling in my account, I want to transfer the money to you and I want
you to use it as a donate for charitable and help the needy,
motherless, less privileged and widows within your location.

I need your assurance that you will use the fund for charity, once I a
favorable reply from you, will inform my Bank through my lawyer to
transfer the fund to you as my Next of Kin and Sole Beneficiary. Once
I receive your response, I will inform my bank in writing through my
lawyer.



Thank you and God bless you.

Mrs. Susan S. Cage

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
