Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DB919A18C
	for <lists+linux-mtd@lfdr.de>; Wed,  1 Apr 2020 00:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/p23JHdQE8GP/uzhSYxV91xErVhGJrxQaj4+xu8W04A=; b=V43tg3Juvdk4wv
	h/u0Fv4HmBnp6MkEtk8fR+LMZEgVfZvxVuesvVtDg8CXUG2RMCEbl+PLXMUGKEgwhew/vbP4bW7q5
	826Qd6bKaCI2H/i84/MmWIrLOBWr+XzvZ8V8HeXF+TQpnT+JLkV94op1PfCbZMo9UIiHB6JkN1TnB
	EKT+S3eMDkJHc1bMGTVDrG7hjj7xZY/bA9uTPobJrTbVP/gMvuZ1gaom7VU1bjEQ5x5FFaPpsaxmq
	XEbqVNS3f7rXHNGL2dLM501PewD+MY0bqdPuiu4qyrBjnC6x2xjU57ojtbg9Blc1SqMPXxMY1hXiY
	kP0L2/amlWVDkIK4X+Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOwV-0004UO-3B; Tue, 31 Mar 2020 22:01:07 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOwL-0004S8-Pz; Tue, 31 Mar 2020 22:00:59 +0000
Received: by mail-il1-f194.google.com with SMTP id p13so21013580ilp.3;
 Tue, 31 Mar 2020 15:00:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lc33E5Df9rZgd4qmK0wjmDHg2/VwMCkladXOyRxwDEQ=;
 b=Bv/b8oDPsmRhhEE+CPMm7YL8/1k09JzfpgSwmgyOQQc0NLPW+pojBmu+Qeuhd3Ciu9
 4FZwU7NgZ3BlK+YqkSUFVhDJrsr0sFEyDrlPQbjUA5UbDA+6ybdFg2DVQRLUU7+oTYrI
 z09paMWqmJSnNw38V1qDo7btswuR9zte0/wxwPPlgqTqPdUmFld4f/sQWvd/OCVotJO+
 W4oAxF/0Dc+L42mI9YPI6rCtxKOsjLXqSAWFOi2zV6NAEC2jKBNHIbfE7jW7HZg+g5UO
 Ejasd/BanuxojdaOwlpTnG5kdNNElu92MJzRSPPVxJB5g1aCPdkXDnLJcHqqamwKCmWL
 CniA==
X-Gm-Message-State: ANhLgQ1oOrQaAF0t3q+1uVy0FIa8JszA1JgBxN98unqnSNQZVOYaOc0V
 DaqpwXFlu8T85FwO/Fc8Gw==
X-Google-Smtp-Source: ADFU+vt2obj9Pp0WVbC2XhGR8Zra56tn+jusDQkYJG1LqYScGnHUFR99v3w+nmrFf44+CRhVQro3Zw==
X-Received: by 2002:a92:1d4b:: with SMTP id d72mr18236810ild.14.1585692053642; 
 Tue, 31 Mar 2020 15:00:53 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id n6sm43408iod.9.2020.03.31.15.00.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 15:00:52 -0700 (PDT)
Received: (nullmailer pid 19586 invoked by uid 1000);
 Tue, 31 Mar 2020 22:00:51 -0000
Date: Tue, 31 Mar 2020 16:00:51 -0600
From: Rob Herring <robh@kernel.org>
To: Weijie Gao <weijie.gao@mediatek.com>
Subject: Re: [PATCH 2/2] dt-bindings: add documentation for mt7621-nand driver
Message-ID: <20200331220051.GA18084@bogus>
References: <1585678079-5999-1-git-send-email-weijie.gao@mediatek.com>
 <1585678079-5999-2-git-send-email-weijie.gao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585678079-5999-2-git-send-email-weijie.gao@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_150057_845674_D12F1DCF 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anders Roxell <anders.roxell@linaro.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mips@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mtd@lists.infradead.org,
 Mason Yang <masonccyang@mxic.com.tw>, Weijie Gao <weijie.gao@mediatek.com>,
 Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 1 Apr 2020 02:07:59 +0800, Weijie Gao wrote:
> This patch adds documentation for MediaTek MT7621 NAND flash controller
> driver.
> 
> Signed-off-by: Weijie Gao <weijie.gao@mediatek.com>
> ---
>  .../bindings/mtd/mediatek,mt7621-nfc.yaml     | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/mediatek,mt7621-nfc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/mediatek,mt7621-nfc.example.dt.yaml: nand@1e003000: reg: [[503328768, 2048, 503330816, 2048]] is too short

See https://patchwork.ozlabs.org/patch/1264888

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
