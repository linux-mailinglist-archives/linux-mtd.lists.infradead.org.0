Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71434114D24
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Dec 2019 09:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pfZG1ftDYCImhB1fVzWYoLiewhtJgD1eGD/TYGVquKI=; b=WkxOOHLLn55hmT
	WhmzR9F0HrW5mrwrk5TWmpzeYrTobDm4nA0zFguZGpDtYGgD6BIK2ralLMiVnpesL1ApFRQ5CaF7H
	X3acUIIMHxS8XWpJWTyPUzM5+4AZxA0T3dOdBmC+fWSe5UYdxmuTtfEXuDVgzPgc2Sby1IquSxjbm
	ntkbbD//DqxyE8lnxjXTHkMAhS7o6mToe3yvSeROehjgmVoR9aamGB322wIoGshfbU+/bVAogPwKn
	/MdfV8hBPwAA9yBWMISpa+sfW0DP6LSvjAl1DH7UfNhc9RTikfssvio+ryDYVtj8FgHLR0gDmVw47
	Mk608UE7RBaG109fIWHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id8cB-0004oZ-1v; Fri, 06 Dec 2019 08:05:27 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id8c1-0004no-4A
 for linux-mtd@lists.infradead.org; Fri, 06 Dec 2019 08:05:18 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id xB684uUt010953
 for <linux-mtd@lists.infradead.org>; Fri, 6 Dec 2019 17:04:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com xB684uUt010953
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1575619496;
 bh=5HkglI0EKjnLXCnlt94Q9XbXoUC156pTW0gJif8WsLM=;
 h=From:Date:Subject:To:Cc:From;
 b=fCADfeHV0pHWJfJJZReqYgrFWALqlNHJo4mhghcMnzY+qcFsW7i/T3WSK24ScT7Iy
 dLN32NZkjERwIWiqpD6nV2aZduYg5CKr6dFWewRNvdMoKtHqrCqTwfUED1D4AQZa8r
 +7zCdPbukVAygKyeaw31rJ+shCyWECyp1dsqKEqrtxgbb1WNCElPVs779xujmQ9G1Y
 Q1fmoVO+I2KiZB3CGAtSgqGHUy0+T7zSCSqT20VzTKJ46qnaIn7575Cmltlu9kfuSX
 Ltq8puz7u/G4nFsErrsyaLCPMonLBx9naBmnwBYdaOS3E0NjNUN7Bxfv+J6LxXZD9y
 9uRI4N4PwMCdg==
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id d6so2450671uam.11
 for <linux-mtd@lists.infradead.org>; Fri, 06 Dec 2019 00:04:56 -0800 (PST)
X-Gm-Message-State: APjAAAVxsjdp3sUrGWV+3Jv80askl2QN7JuBXPWfnAGmdidBBSwM3K78
 CcWic4X8QOdNIEriw8di9iXwQjTJdZWQbfzqfQo=
X-Google-Smtp-Source: APXvYqy3+OU+tXwm9mApi3095nPuMim4hayi3qQUxbwWEblDDMPQ+2LojXhJOLXlE5A6bcurl/xkESk2ulBMZ17+6e4=
X-Received: by 2002:ab0:3487:: with SMTP id c7mr9347188uar.25.1575619495354;
 Fri, 06 Dec 2019 00:04:55 -0800 (PST)
MIME-Version: 1.0
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 6 Dec 2019 17:04:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ29tXAFZaYODFyd4iAx9UhyjhyEtXxk+ZC+yUtXsqMMQ@mail.gmail.com>
Message-ID: <CAK7LNAQ29tXAFZaYODFyd4iAx9UhyjhyEtXxk+ZC+yUtXsqMMQ@mail.gmail.com>
Subject: About DT binding of reset control
To: Rob Herring <robh+dt@kernel.org>, DTML <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_000517_384087_A171513D 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello, Rob, DT folks,

I am trying to add the reset control into
the Denali NAND controller driver:
Documentation/devicetree/bindings/mtd/denali-nand.txt
drivers/mtd/nand/raw/denali_dt.c

I'd like to get some advice about the DT binding
before the detailed implementation.



The IP datasheet clearly says
two separate reset lines, like this:

rst_n :           controller core reset
reg_rst_n:     register flip-flop reset


But, in actual SoC integration,
the two reset signals are often tied up together, and
the reset controller only provides 1-bit control.

(The upstream platforms, SoCFPGA, UniPhier,
 both are this case.)


In this case, which is more preferred for the
DT binding?


[1] Define two resets explicitly according to the IP spec

Optional properties:
  reset-names :  contain "nand", "reg"
  resets: phandles to the controller core reset, the register reset

Example:

   nand {
         ....
         reset-names = "nand", "reg";
         resets = <&nand_rst>, <&nand_rst>;
         ...
   };



[2] Allow arbitrary number of reset lines


Optional properties:
     resets: phandle(s) to reset(s)

   The number of reset lines is SoC-dependent.


Examples:

      nand {

               resets = <&nand>;
                ...
       };





I guess [1] is more precise as the hardware specification.
But, DT files will end up with giving the same phandle
to both of the two resets.
I think it is OK, but anyway better to ask
before proceeding.

Thanks.

--
Best Regards
Masahiro Yamada

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
