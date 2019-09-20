Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8ABB8E10
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 11:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JQk0E+MyXhU1zYuiPOmP/9I+OX/f2lQLcJOFJsx8DMw=; b=upi
	HV7cF0mEgWItZuXJzg80ymTRfpxN8zv3tpFRd2ljqaBS5aahGolLdS0qvYCD/Vg2uCIqwg14Q61KK
	A3h2ZakNGtm6SLPTo+2+90Cd2dmoxOU49neLlhtnyQ7SdmeUBT+wXzt9+I7RHdd4R8gnOa2gvdFBG
	tG7bHkPMXnnTF8wdefUxswG7vcViaBRkepAT0eKgPPJ7vcIf6LHyF2EHRaGLORV8yqHW2BAx88uNu
	QTk2s8NkDz/lC4bnQlsN6TSutVfovSj2M5+OvSOI+SFBRp6jzXhNIDdLD39VGFmZGWTgyZqhhwIO1
	YJ9qKNpCMNf8vwo4yja+XaDft8SD8YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFav-0001mG-9v; Fri, 20 Sep 2019 09:52:53 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFam-0001lu-SD
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 09:52:46 +0000
Received: by mail-io1-xd32.google.com with SMTP id b19so14816529iob.4
 for <linux-mtd@lists.infradead.org>; Fri, 20 Sep 2019 02:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ULqsJKEIeHgaC/pNfZ08YUrDLNwlxoDprrHkJGcjJE4=;
 b=dz6W1csgEklCxRlv0mC//WSUDq8ywxejBCtga3p1876QE1fb3gj7POhc67ha52M/C9
 iiKFpUbceOfbbTwvOtPEan7nb6YwfnNVsk3BB99Dx3G7uTsbFzhoQR1F8DCzpp/2IpJW
 cuRFBiRdtcHyiRV3Lf4OGpggPW9RFGB3FuUIQjmoPdSWV39qhx0+gEBZxi4/uq+ze0T8
 3HNtszcySYWAIXVq+LJ2z160YSLGfOe2jPDx1vz4VG163m5BSoK0JmRQRqRW/3UwYaf1
 cElIqVid5lHPa/aKFCLwKXS/0R91EbtPEJQG90X0xlDiU2Y/uoWgHT5TlVPfRUO/MbPO
 yN4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ULqsJKEIeHgaC/pNfZ08YUrDLNwlxoDprrHkJGcjJE4=;
 b=e+W40Eqc80QqLMNHXAfvwOGrzR+ITbaX1Z+eS30fOE2iVyh9IvLWjK8EfwQXjIKPHy
 oo004qUR/v8wv2phqh0cJXNWAKv5fmGLFC41XYHxZRVIEBdPkmqtuEgVD3iaVBo79KM8
 jy+L7xaEF4dTPfYgh/6HAF2vHHXouU4wpq8qOOk4tcYOwZMnHbJFz56Kzu5QpbtQ3Bif
 iHnNfXsESvqw37p+MlHiyEw1HTGMO52yPPgqnwTk7AaWbOSm0dT+CmTIk2YANqGOW6dk
 3tBgYSDXqVoTl640D8pu0Lw5/HE62ZD8pIZ6thpeFg/mNVEt/SyD9iRyorw26g6Olirm
 jvEw==
X-Gm-Message-State: APjAAAVYg/TXFCLr8qF23hRj46cjK01urYwXpcd7UjmWv636ABg83F46
 y6OsXs7vr7Gs9gc+9fEq/mfJ7SJUOzeW8lFJzoHexQ==
X-Google-Smtp-Source: APXvYqxtoW74C2dtGsH0w9NUN/CPqaA6JFDEocW+ofUl0xF9yiCmD0wt/9FijAkl7Ig25T53StFAK5KJtaRUo0WIUTc=
X-Received: by 2002:a02:6601:: with SMTP id k1mr19017184jac.47.1568973163334; 
 Fri, 20 Sep 2019 02:52:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP; Fri, 20 Sep 2019 02:52:42
 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 20 Sep 2019 19:52:42 +1000
Message-ID: <CAA=hcWRK-ChXxovKqSLpDF+JO7DtjginYXY33O-xtEAq25MiuQ@mail.gmail.com>
Subject: Missing all ubi commands in mtd-utils
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_025244_914535_CD9C8D5A 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d32 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi,

I installed mtd-utils from Yocto, the document
http://www.linux-mtd.infradead.org/doc/ubi.html#L_usptools says that
mtd-utils includes all ubi commands, but I cannot find any of them,
what I am missing here?

# opkg files mtd-utils
Package mtd-utils (2.0.2+0+bc63d36e39-r0) is installed on root and has the foll:
/usr/sbin/nandwrite.mtd-utils
/usr/sbin/flash_otp_info
/usr/sbin/nandtest
/usr/sbin/mtd_debug
/usr/sbin/flash_otp_dump
/usr/sbin/flash_otp_lock
/usr/sbin/flash_unlock.mtd-utils
/usr/sbin/mtdinfo
/usr/sbin/flashcp.mtd-utils
/usr/sbin/flash_eraseall.mtd-utils
/usr/sbin/flash_otp_write
/usr/sbin/mtdpart
/usr/sbin/nanddump.mtd-utils
/usr/sbin/flash_erase
/usr/sbin/flash_lock.mtd-utils

Thank you.

Kind regards,

- jupiter

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
