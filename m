Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0E013B0EC
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:30:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWq8n2OVmBVudFOZWyY4yjTU5vVH6NhibCO2vxcDgn8=; b=gEzYi9rWCUXkeI
	w2wTruNgb/VZZaiLtALI8LIg/amdmnocWy/swy/Dqr4hHrhMFuuHImy9eaXEXVOKKovjcuRUGM+w0
	LBHxEaZu+XaL9sb56Yi9Y4nsXYhWApirsXsN+AorwZGWw4H/Faj3+gep02GE6OsQY8PUNosNHHy4c
	3pKEN2TEsvYDPW3FmNJVfnZx1h0deFUQpAwkJC472V6cxxUFYf/lIh12uxFYD8E9adcLVtWTtPkmr
	ONpzjk0OUsimcPPt1mWGVY/jXTISRfq7O+JsuGqmpPyFMpboeeEhAtFc5TQT+iST/4CORC49xG7nW
	/p1dF2OlVLBZwxSyWVeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQ0w-00059d-7y; Tue, 14 Jan 2020 17:30:02 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQ0S-0004vQ-4m
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:29:35 +0000
Received: by mail-lf1-x141.google.com with SMTP id 9so10456369lfq.10
 for <linux-mtd@lists.infradead.org>; Tue, 14 Jan 2020 09:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D3B/9aAIWWnv364Zdiyih/Gl8h6mySqmdy33Hg58LGc=;
 b=BhYUIhUoKB7SRVYd2bSsqiHBdlJIU/BmbuUfx4cjq5BR8tTiQlFZiw92dUOExmehBE
 acZbdC+n6PxtmRkMsRGkL/SXUXCzZvnGTCoUodHUgUytkERb9HZHCBt7Zpi2kDfCMjAL
 Itb2e/FZ2j8tBEj0edHat63pEE51wATTxj7MAXx2pJBOaMAA2oWDLi3XzgzSfBCTnUH2
 awyMulGQN3ztYUlSoqBhhEuzXtmqqU1YaDyENwHIGsSlCMXMCosY0lTMhB02JraTelCQ
 r1c5tyAwtXABIgSux03mpyT8nHKs/WfG9CijOfGjoWnue+6sgCUOV289/vF9QRmvJzaJ
 fmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D3B/9aAIWWnv364Zdiyih/Gl8h6mySqmdy33Hg58LGc=;
 b=q7OMV7OsB5kdukZfNRu3ABGEpPgEqwgIGDKU3+7XLk8cAf6KwLO/2xr6e9Uk2J+QRQ
 lij0agZAyTr5nr3AI/P56NobM9wYMp8/Jh9uzJ/4rzTbGuvj3jtkKUyXrAHqtac9pOyN
 Ph5Bit/c0apZGZeh7b6emOu8O8snuYGTykGcy9hdIdxbQWSBnz4w2jjfGti33ZmbqTUF
 K+btn4Szv7DcosoXvxOMvcLoPoMSA/DYIlvyTZQmhG/Jprzf53mjGbiNyQ2ZtQo7TdSp
 A4MsWbDEzOSMb2dNPDrHju/QZ/b0JivtY75RVg4UDrHS3mSZl60E4X1x2f+b6mTHTJNy
 TKwQ==
X-Gm-Message-State: APjAAAWabWEM46CPxtqG7z/9IJW5IRPCnvss51a5S79xvAGc0wk8rRkP
 Fp7BgglBWcywb3pbIJQPYfCIJdn41z2GZEZAxLA=
X-Google-Smtp-Source: APXvYqwfPKF5OMZHuufaTixaCnnXaruPdAwJCsGvVD5BrQFZBaUSTmI6ZZnTc2OwayGMYXgnlg6aPdoevHFt169WX6Q=
X-Received: by 2002:a19:7701:: with SMTP id s1mr2445708lfc.180.1579022970006; 
 Tue, 14 Jan 2020 09:29:30 -0800 (PST)
MIME-Version: 1.0
References: <20200102130826.170647-1-esben@geanix.com>
 <20200114170354.918-1-miquel.raynal@bootlin.com>
 <CAOMZO5BvO+rSqc8pPkzC=dEa1SkokeDNtgK=W87amWsOUODBgg@mail.gmail.com>
 <20200114182557.00b0c6ac@xps13>
In-Reply-To: <20200114182557.00b0c6ac@xps13>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 14 Jan 2020 14:29:16 -0300
Message-ID: <CAOMZO5AELQV8q=k6hcHoEZbQp3EmXzPda9Nxw+BC6+e5EyqKUg@mail.gmail.com>
Subject: Re: [PATCH 1/2] mtd: rawnand: gpmi: Fix suspend/resume problem
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_092932_238214_4A0B233E 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Esben Haabendal <esben@geanix.com>, sean@geanix.com,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 martin@geanix.com, Han Xu <han.xu@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel,

On Tue, Jan 14, 2020 at 2:26 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Does this has ever worked in the past? If yes can someone -Esben, Han-

Yes, it works.

Adding "Cc: stable" plus the Fixes tag makes it to go to stable
kernels automatically after it reaches Linus' tree.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
