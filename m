Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E360CD19A
	for <lists+linux-mtd@lfdr.de>; Sun,  6 Oct 2019 13:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dnU2GT5BHSdCCXfpjupW5zvYvPXNEiGGpgLIGzNBh2Y=; b=Utdy69MTfJKmtz
	1uMx1PT/nIN3ZSW4EOEEWoBLBfYf0BCQ6IvnWocbWhl/nzhB4qpPR7T0hy96XTLpidJY8n0BPBQc8
	vqlquo2g9EY7KcgiZQdZOw+k7i2a5oZys6J/59CRRF1waH852o34UcTuCgbayRKOeQsRtFg+KtlT5
	n3Ci6y4nJkUBx5yEGw1+eE/f+DLqQPuC7YtYjPlbBkfCzBf23mekgjtV7ylhK/IAyCEqI3fLmzMxE
	Gdgx4Txli3NWY55UeS/9WHjgEcN35IpoMiIyt56N4z2k0iIfeJvwsqdLMi7xw7a3pw0l9F391IQVL
	e7g7LoCaRnR0yVh7wgqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH4WX-0007en-TX; Sun, 06 Oct 2019 11:16:25 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH4WP-0007eT-04
 for linux-mtd@lists.infradead.org; Sun, 06 Oct 2019 11:16:18 +0000
Received: by mail-io1-xd43.google.com with SMTP id n26so22631969ioj.8
 for <linux-mtd@lists.infradead.org>; Sun, 06 Oct 2019 04:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=VQgRiL13w2lnC5yZKNcbg2HiB3UGZa2RAJWpzb90ZSA=;
 b=NFB3sSUGv9cg6EnQDgXps524lsbgj8OOVXfl97ruHi0oPx07+qtBRtB20vQwVt8lvn
 +2wLcnd3BqCqF2r8SidfCIQ0WbwKeOerbyUonba+m5oEG28C/8ZbECEsmvCTm7USfosT
 DjZFcWs9NKFoFJq0s3pSobvePUP0H1xCdX5i/h18mA/82UhOGHqAttHoyXyijOB1rbB4
 Dy5zVkAfdDo1IP5aoQl6uWvomErfpEeU2ayGlZU124HSU1r4bpkepip0388kOPMr/86i
 p5sHkpQWzWKbrsvcA/U7pdoEd/vN4simUTU8NEbqFjCEV2lCDw3ut4yGsgFmbuYJ29d/
 pueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=VQgRiL13w2lnC5yZKNcbg2HiB3UGZa2RAJWpzb90ZSA=;
 b=cRGzGSlUjUtlD6agbBAttKi+d+2jlUUCsJSka82A32O7UbSgpauKSN24HvAe+ZJIql
 b970BGzYbcJgbaQ3oQ/bnRghu5ETDqFTqsQo7B/T32PxJVwXQKmI/aUrWA0lBNXJnRqc
 aC+YksrFj/QQpefaIe44RHK82uG94W+4/k7t7xvx5wWfX52xZPsQ3QplVjEjoTOV8tA+
 e/vzFB/UUEivyyYkNYuZ4+DF01xsmWB8lscEbMXiSnWIRmrSXO4yjeYirXRgEF0XrRUH
 YptKPcvj13308Elo9pysv75mJppDWpm1EOQGejJWsexYj2lqaDr03M4RzuHFSat1FeLY
 8pdw==
X-Gm-Message-State: APjAAAX/w6cA37kn5bEDkcAk/XkiYpdFfh57WmOmarRA71r7hN7+P56A
 BlKOZREqsKHGGjuUB5f+CGhYvwu9a9zcvkoB/vo=
X-Google-Smtp-Source: APXvYqz6nN0HYpr5e8JFj3LXTa3nwjX62iuJKRAtUrY2oUld9jmTCmouQr+s7rKdVE3A70dVafcZjoFK+3WNwec4G4I=
X-Received: by 2002:a6b:f311:: with SMTP id m17mr2472649ioh.0.1570360575192;
 Sun, 06 Oct 2019 04:16:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a92:464d:0:0:0:0:0 with HTTP;
 Sun, 6 Oct 2019 04:16:14 -0700 (PDT)
From: "Mrs. Lisha Haman" <mraliciakazaramaa@gmail.com>
Date: Sun, 6 Oct 2019 11:16:14 +0000
Message-ID: <CAG4v1MMya7DZY179rY3WXMJ1k-10zOMwVmsQsPpQORzh6zwzfQ@mail.gmail.com>
Subject: I NEED YOUR HELLP
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_041617_065888_8C09349C 
X-CRM114-Status: UNSURE (  -2.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (lishahaman225[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mraliciakazaramaa[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 T_HK_NAME_FM_MR_MRS    No description available.
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
Reply-To: LishaHaman225@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello Dear
my name is Lisha Haman, How are you today hope all is well with you,
Please I will need your urgent attention regarding this important discussion
Kindly write me back here: LishaHaman225@gmail.com  for more details.
Thanks,
Lisha Haman

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
