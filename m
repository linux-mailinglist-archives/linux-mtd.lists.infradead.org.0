Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E153CCD2
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Jun 2019 15:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVB9PN7+6DCF//x/taVi60RtGXPtUrV4r+JLI+X1jhI=; b=ZtkiVPl2ig997Q
	gT0gZRfv0GZEAj0m5SohoNWICdysZyOKNQ6vSP3ZmwFg0nM77N3wI510vsP8nQq8o3QYh6vdAoxMD
	eI52QFON+NakivmI+btzM+fOoZlceoDRBLfGRyiym/wCrK3qi0ydg/ZPT1DuMlqlI0/0J8kzQr81+
	02EWbigaQOit9/bSO+NEKe4UL2z+U2aYfZ2H4mkw3y8k6r3uZvOm5np38fZsGAzb4kH2kc2JKqtc/
	RJXo8jVpcLGlQtDfXKpX8wNarmIgbUfA4+ZKdbkgbT2jqyQcGmMSEWjWLvBfZ6Mby3t049LVQt2WC
	ECsyZH1AReT47hWaX3Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagj9-0000by-0C; Tue, 11 Jun 2019 13:22:15 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hagio-0000bc-Km
 for linux-mtd@lists.infradead.org; Tue, 11 Jun 2019 13:21:55 +0000
Received: by mail-wr1-x42e.google.com with SMTP id e16so13054912wrn.1
 for <linux-mtd@lists.infradead.org>; Tue, 11 Jun 2019 06:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZL348BrulEPJbyvrbT1Pm3cHOY9u7vp8QDokTQQCP0s=;
 b=mTNpENcR/BD01tSnwRU6/MnFmX1rwEPR98I93uhLJ/VkarEUy7/w/eU9tylA+7V8IY
 +xLrRPrpMG3n9nYuHXWPM+2l9DHv6Qqy8hrZ8Ovx70qtv77pQhNZrPDe9tJcjCUIBr+O
 x5kbrUej+B35AUFJ1SRl1GTFxZVkgco5SifBFVpeItXzVJ6+3ZL+bwemGcxxNUDSs7Ha
 O6wgtU+yYF0J85SZpaZD0ZNzr11YaCtzcuPEEWXPFKbA67XQJGzDiSue5Map6K1LsEUT
 +2oCjyDk5zlJcUrP6wUd5/RGP7ZlUlm1Sc1NILQfuRkOeknhUxyozcGjG15fpNXE36h0
 7fag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZL348BrulEPJbyvrbT1Pm3cHOY9u7vp8QDokTQQCP0s=;
 b=Edj+Q2Q4l91k/BbbraBTwzDqzKkPk204BgpOCZ+379m0Wl2qCyLSkylXWcJr1CO3aJ
 LcmQQ6/tUHsgHRLQPwk+CaFGzeC7AoTTOlvF24K+8uZRMPHNxMgAtY4ptIYGTpsf/E+D
 NOk098XSC+RvHnX/HDBzLn8DG1tv1r5AmHsr5WEdw37RksBMKaYu8dgeq0k/m4JVvp0f
 DgNZbWIxwLWlOMrf1E7G6Wapgv7eaYjPaHFO/RHfzg2Nd6rJ1nXIJh1BOdVPkO/HsVzt
 WCThXQhZXs71+eM2ObnvP+U6nxkcxCRSq52YAsx5HF+7e3XTvLu1/vmTpc/3Axysb/sk
 Z4dg==
X-Gm-Message-State: APjAAAW5TMYnAttbPdmsIYuxv2d6vf+/bjI2oKZPRE6xugKmtWWdAw71
 YRvPucUxPoG4lppV0+ZpSbM20uQR2cp3vpDgCHU=
X-Google-Smtp-Source: APXvYqwAj7t0vfqZ0b1VCXC4O5ksA/hgWBES5DHgZDcGGt9e4/8LoC/BbAxYj13ty2GjXesqqK12LX0L/bwK/nC4eIQ=
X-Received: by 2002:adf:f14a:: with SMTP id y10mr36506196wro.183.1560259313059; 
 Tue, 11 Jun 2019 06:21:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSKQ4+BsQ9XPEhP+f=-oTA7CnbJ6=4upRZughg8mOUSUw@mail.gmail.com>
In-Reply-To: <CAA=hcWSKQ4+BsQ9XPEhP+f=-oTA7CnbJ6=4upRZughg8mOUSUw@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 11 Jun 2019 15:21:41 +0200
Message-ID: <CAFLxGvzAHGVA9Pe0rvJWqjUgaPZKyExvV1gu3pZAezhNGDXryg@mail.gmail.com>
Subject: Re: NAND user space program
To: JH <jupiter.hce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_062154_683280_E0374019 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 12:20 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> In NOR flash, access flash in user space is integrated to the Linux
> system read / write, is it the same story for NAND flash? I installed
> mtd-utils, but not sure if I can still use Linux system read / write
> to access NAND flash or not.

Well, Linux exposes both NOR and NAND flashes as MTD.
So there shouldn't be much difference.
But make sure you can deal with specialties of NAND, such as
bad blocks.


-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
