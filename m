Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972E5B348E
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Sep 2019 07:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mX68LX2Aswmr5VCkCZv3ZxYzmNOIIJZaTZQYPix1KXY=; b=euEUgm8uNX4hvc
	be07U8nsX9wTOFQq8J/Yzz3aAWdexldhdK9c/sTDp79FpbsfkOngvNFAPgee5egBTbHRLOocvsZBb
	b0LDy3qK9PTAbwPA113fQWgSH1o4uhtkNIU1Ey4NUlotJdEQ6WoqZEEIUAC8WTpCrdESupg/cz/ge
	8vVjwpUOOmFs5VZ88c8D65DC3vFq/bs9o5eCcQJGbUnkGcBgN052/R8+jyuaaRs0K4E85voou+P+7
	DkmvXO5agICXp99RFO2vRokosdpBLkOsyWoaGJEy6uQaSz9YKXXQvhoU+IzxvHlrXP6n6KHn6BACM
	D+KxAyzeHXlldkMq6I2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9k2U-0005SH-5K; Mon, 16 Sep 2019 05:59:06 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9k2J-0005Rg-P9
 for linux-mtd@lists.infradead.org; Mon, 16 Sep 2019 05:58:57 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5so2729171wmg.0
 for <linux-mtd@lists.infradead.org>; Sun, 15 Sep 2019 22:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aCO8lvZ9eTy3WmVOqfO5aPcLrtX++eKbV07o7f10XM0=;
 b=hOmnIQtiuLFh1Wl6bPZ4WWhB0Z4D/sFTS7t6dghpK3j11rlm8CRtK1UTBAYM4pXGsE
 2RUurrrlXYXRUcGUR685qY53L0sV4P7czcRPDo0lS60xA1wcb+r+8ILpsd7Cs2PbSGTC
 A2+KdtjLCTpGTlDtPQArZKL7kNH+gpIMe4F294iFZynQhj0XHIj/uTfWxRky0C0CXjYJ
 oTMtnf7BM8TjvyruUF+OJ0j79NiHi4S1XpPoROl6m6BQeaztRt8AGPQAykrUyjnGreDX
 vhrXyMuAEmewgSahgJJAMDdr51s0P+fPVf5VtP7slxELYHdwplbjPXq+azXinkW2gjiF
 tYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aCO8lvZ9eTy3WmVOqfO5aPcLrtX++eKbV07o7f10XM0=;
 b=ocVXOIhNGbBSdQBMxP18yOAGjgmtlkIWtjFTdPDMNOUDeEOMSZq08NqUm5po45H1A3
 AdG+Og7ROziRESuzUHX5DcKec9PnA7SPj+vWmp0FQZh6Sy/59K/kJ6fqXdWOblGvGgDi
 t4ViBbNHE8bLd0pC9f9ixD0O7nmg5lEkO55gshJB+llX2A6Dh8zxwq8495SrfYqZKFD9
 S6QCd/9EiE4AEYWNtEBvrOCZWWEMgsrW+45FG7MaZekkxiLsVsURsOHLsynFTPaGfpxK
 VR6nnd/VBraxNCEmYcomMriGVqRxfviwFOSPCWzhFDVVqMX+BK95ElRfE2395lM3qSr8
 JWGg==
X-Gm-Message-State: APjAAAUWytyu1KC0CcHG0mXzWD+8+UESi2drb5nVvHD1pjZjD9qeJG1i
 GgZQhNYVDp+4YnocQQcWyUiIgeTm+p/kgTekYX0=
X-Google-Smtp-Source: APXvYqwK1+bDQXwgIJTDhicWZB6r7tlAgIoYMrsUXTpjneavW9x9TjbyJ0tE3kr/MEQ/r15vmTjVfIWP2l/xgvfNsQg=
X-Received: by 2002:a1c:234e:: with SMTP id j75mr13392986wmj.9.1568613534161; 
 Sun, 15 Sep 2019 22:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <5b0fbde6-7245-92f9-7336-3d376389e0b7@ti.com>
In-Reply-To: <5b0fbde6-7245-92f9-7336-3d376389e0b7@ti.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 16 Sep 2019 07:58:42 +0200
Message-ID: <CAFLxGvx4AP1y6qeYPN8jUfQv6bnKntZ7jSk9FJb+QMVVV18upw@mail.gmail.com>
Subject: Re: [GIT PULL] mtd: CFI changes for v5.4-rc1
To: Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_225855_810816_E0527BCE 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 11:09 AM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>
> Hi Richard,
>
> Here is the CFI flash related PR for v5.4-rc1

Pulled. :-)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
