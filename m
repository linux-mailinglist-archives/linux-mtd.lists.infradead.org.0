Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B3B16BBE1
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Feb 2020 09:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYtbYEpgOSqIMx3nq3lYZ02ychMfyMiJ0mGAIERlTmo=; b=qaFiUSF1E8t3PW
	9Mn1RuyNqAgfGvpKYRTpg/SAwthkUTpLgWsojOE+ICOI5vtEHuCooYBaWIGWmMgbCIBXtl9vlezwQ
	4+Wv7UcQO+pPwkBCLbP3pW3NZ0I3Y7GpkgwOonkeyBZ/tk4KmYIPUoGAUctBmkgxEAV0DanxbRRwG
	btuts2g3NqSqDs2MXFxZFtNTK/7JEGVZWKZmhcZ8zJ4tbtMcVAr1eihTsip1ujLaDWPInSKLJYPK+
	p0x4YS0SQjvLtNJbkqsRqSF42Fy9Ix4nDNKpIkPoB0zO295AJXplmjPiaMd3cOOYM+Fx8FM3ehkfX
	1/sHOTCAxg+bC2Z/mheA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Vcl-0001TX-0H; Tue, 25 Feb 2020 08:31:27 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Vcc-0001Ox-RR
 for linux-mtd@lists.infradead.org; Tue, 25 Feb 2020 08:31:20 +0000
Received: by mail-wr1-x435.google.com with SMTP id y17so4788266wrn.6
 for <linux-mtd@lists.infradead.org>; Tue, 25 Feb 2020 00:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XIUsWm7Bv4cznxOcSH+hqOoBBAFo95Qk5Ozbw9xVm/o=;
 b=CZu+D1Mc8QReqiE04b/sHOG+p9voH3nirbCpi9eAXzi+JPzklD2Ws5hyzcx5agBcgH
 9VQAJ1zlkh8A7UxuWTgnHhzun+wtW/RG/cm8wb2ShxcD6RMsfJOxk39UrdLGLTUjIaIl
 EZCXPIQjCEXuzTUIQmJR4r+JHec3Ts569PnJgZRSibAVjkE0vDr2ZMRcE3+fvKAplCBX
 jOvPWTKrOyQbRIWKa4NSNE307Z0wpiTLy1tDQpxlRB/Nvw6F2ciWnV4pqOCbW2+HXqbB
 boyRMqT7PFiJqj2dstWL2TTIpZtOOwoWbczdlr2c03TydFNsaCUj7QUrcjCYuGud5yB+
 Vnow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XIUsWm7Bv4cznxOcSH+hqOoBBAFo95Qk5Ozbw9xVm/o=;
 b=PrIe45PBDhdHzOJHSMKqMeqQs1trvOeHiFRkUcWikJeChevgZIL4b950VJ6KQ9O9Ma
 j0laKnzYU6k4nhpz0cr/V6/nYWYnfa2w/X2VG3OPBPOajmLatIO7iO7wuIrtbRdcnALk
 yP3OvzNtw5NS4mgv1jZ9SGazUUA1ESp+PSSveeiKXeUs8i7mCUrYif8jNFtZamQvu0xW
 yamxRtKoWCiuPj8MNZawQwRSfwVPv92tWr8p5Onz3nmV/rhvkvs3RIDeIR+dY0AcS2jg
 Ox01oQdGzo4867GyYEb/5b13MDAWHvMiV9iy2EeJ7+sKy6ZSJfBLaeBhvwK6jgxLaoKm
 OgUg==
X-Gm-Message-State: APjAAAU0rvhf3uivGt2hJ+DTV3D9egH+9Nxgb2MScNq6CeV/eRjjIFIB
 xB1fux6jodh0m8jnA4Jzxb2ykZR1RZ+PA89O0j8=
X-Google-Smtp-Source: APXvYqyBBHtAvU2jabzlXgT5ubmAbqfdB5KMC4eCdNP+HQfbAP+1qKAPe8DeYlQvBj2FJrrMsJosdqLZr9VlfMtx1hE=
X-Received: by 2002:a5d:40d1:: with SMTP id b17mr68993904wrq.93.1582619474921; 
 Tue, 25 Feb 2020 00:31:14 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWQOxh-FDU9iy-juGySDdxDRvj7nKDOWebQS7zF7RJ+fSQ@mail.gmail.com>
In-Reply-To: <CAA=hcWQOxh-FDU9iy-juGySDdxDRvj7nKDOWebQS7zF7RJ+fSQ@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 25 Feb 2020 09:31:03 +0100
Message-ID: <CAFLxGvwUMsXCO2yG27z7av3eAajwEzuHafX9Fimejc_u2mpGig@mail.gmail.com>
Subject: Re: File IO write flush time span
To: JH <jupiter.hce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_003118_913678_DB8C5437 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 6:58 AM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> If I write a file to a UBIFS volume, how long the mtd will write it
> from cache to physical NAND? I try to understand in what time span
> those IO writing in cache will be lost if the power is turned off
> (lost power).

What cache do you have in mind?
As soon ubiupdatevol terminates, the volume is in stable state.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
