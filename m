Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6CF170B6B
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Feb 2020 23:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/MFYpEjtOzoXxeNWM07Kh05NY0NkWyGUKmWm1FoE3E=; b=ImpmL90fiJtF+z
	w7/UAXQ3E/Q1qeqhk+RsGGny69IAgEVMF7jhMf3kGh+6kfRyL7xGMWoyNpN0lEY7OBBFHIekv/9HA
	9YBvugYH5nhZTQyMNep0bghU9kU24nb2PzCMyveQuhwXOpyZooRnu7m3zmAxW4Rr0prJluq1m6Eo+
	3VNyam7P8EmLnEKJR4T1RDYiQ6D1RX+R77ZWIEso53ktTanCY8/1Qd+Kt9HIKwZdrcNvCX//gxa7N
	VUTStssSJuyvhybY7nPvkfZsujJCSUI5uNkFdocAlrjCyAoK5EbDX+VkuFofZPbP7g6y7DDwFYBTu
	V+7VlRVcWDtJJVHAPwoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j753w-0003Km-Da; Wed, 26 Feb 2020 22:21:52 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j753q-0003KS-BU
 for linux-mtd@lists.infradead.org; Wed, 26 Feb 2020 22:21:47 +0000
Received: by mail-ot1-f66.google.com with SMTP id p8so989631oth.10
 for <linux-mtd@lists.infradead.org>; Wed, 26 Feb 2020 14:21:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pm+KRlKrRAlpkte58c3hWACvW9/7DnqTwr2mwwxPfyg=;
 b=skiCTMmGAdYMUqbOa9Z/JdgIOpt0RYFhpZcZipfzf3swOvfmOhy2F3doNRkDW7SrgW
 Vmh3qMG1GYGXiEYkPUp35K5N0npE4+IgOgWk1ozK/OiJLqHf8Ht33+mqMB8NSW4iZSO5
 /6CUMTvmUIvskMG79i7DM0AMaAuE64N+qPwFxc/eSzM7KDJ/F+2D/poiye4vTmz1ntyH
 pYWSHmpofWdwv8eK/lEklECRLq0zEt9wCQF6VDltdYzBAkQibfhv4beZALAjBiR2JQtr
 i8ku1kDUHgTjZjZdIf8m/pjXo208sx9qiuSjzsgxs/wU2nU8wgZJb+5HRSLoje2bRoBa
 Pf+g==
X-Gm-Message-State: APjAAAUb/fodYWp9/ckeEehyE+d43VcRSNcOYQNI+FSbV5iQIaH4MCjr
 WoqhUJijOiEPyT4SozSMUg==
X-Google-Smtp-Source: APXvYqzqESskOaokNa5xJpO2bz/TvwXWpRKOLr9EGPeCRN81SZK39751YsyMrm8RnXZvtUdkdrwhVQ==
X-Received: by 2002:a9d:7599:: with SMTP id s25mr844343otk.285.1582755705377; 
 Wed, 26 Feb 2020 14:21:45 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m18sm1243415otf.6.2020.02.26.14.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:21:44 -0800 (PST)
Received: (nullmailer pid 6745 invoked by uid 1000);
 Wed, 26 Feb 2020 22:21:43 -0000
Date: Wed, 26 Feb 2020 16:21:43 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] dt-bindings: mtd: Convert Denali NAND controller to
 json-schema
Message-ID: <20200226222143.GA6682@bogus>
References: <20200222141927.3868-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222141927.3868-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_142146_390163_20D9121D 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 22 Feb 2020 23:19:26 +0900, Masahiro Yamada wrote:
> Convert the Denali NAND controller binding to DT schema format.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  .../devicetree/bindings/mtd/denali,nand.yaml  | 149 ++++++++++++++++++
>  .../devicetree/bindings/mtd/denali-nand.txt   |  61 -------
>  2 files changed, 149 insertions(+), 61 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/denali,nand.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mtd/denali-nand.txt
> 

Applied, thanks.

Rob

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
