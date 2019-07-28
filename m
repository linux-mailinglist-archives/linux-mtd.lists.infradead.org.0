Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD6077EAD
	for <lists+linux-mtd@lfdr.de>; Sun, 28 Jul 2019 10:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EWjwTTfSiwy0w/QZDPkJNkX0co7dUaJn0yDeM8DfjK0=; b=IJpNFomX4HIT7uw0vGomk8ebC
	q+2odzs6hehGTKzHGr0+mVlcwv1/mP4gZRV2CIw77k+ZJwGsyLJQCckNe/uosuyXXdzMYF3cDS4oA
	PniNNleLw7dTpp5CNE1+j4HhqgiuCIC77fb71mtTVj/E0WHoU6sq/0H4hgG5O84JcgFls5fVYI6Rf
	euWt7swgPtOjxzMzBqMn2wEzny0rgTNSeVmO65clMTWlE7J8YC/0kCrxmAlYD5v88ZN5icQ5ZadlJ
	cKPGzWwhDJITAABgdZqUuMTxKElpgsCAZLYdEnvVrCiCpj+Mzj10UFrAO53wr8R3Q0ikvF7yd+Fp6
	82ub/NziA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hreqY-0001Ti-SB; Sun, 28 Jul 2019 08:48:02 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hreqD-0001TN-EH
 for linux-mtd@lists.infradead.org; Sun, 28 Jul 2019 08:47:43 +0000
Received: by mail-lf1-x144.google.com with SMTP id r15so22925394lfm.11
 for <linux-mtd@lists.infradead.org>; Sun, 28 Jul 2019 01:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/b+7tiLDR9uIsJJ5E8R3llIqpoUoXx+/oSQofC/YRCQ=;
 b=y6HKELMFli+wMRxWz//Ojw8GHpB859UPux4u3jP+vas3FuY3x9BqMO3kPFrN6M2caw
 Wwxpe25fQfF5ghCXnIpUY+qx5y6w8lpbg0nEg+w/sWZQDFP+/Dw3JyBZYzx2EL20aj65
 cpVKmuSrRGggbrWYv31MW645aNkXVAMJQgWeDQW2HSbxOM1cXukYEfTuxIeu0npASGaO
 qZFu4yMgXBbzqN+Yw689RHm1oT0GdUuDJqdfrnIj0UrC4Kkohqn7gBTv5dRzHOUjfWTE
 ZptyeaXh4SES97bfsVfbZx//aJuf+GyvGxqFSQv4CdmP4Qre5kqJCCZk/pbu0/lUVZXh
 6jnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/b+7tiLDR9uIsJJ5E8R3llIqpoUoXx+/oSQofC/YRCQ=;
 b=DnE7knWTbM/5k5hVMghHyN0vkohgTNKnPAtQgeTWxPk1AvmtvRtP8y8c6yPqo/nhi6
 6eg9K2ATziCrnYKQttCbDlo6TxC977envLzowambH+VWBjZgze/stlbA/+paVrMRv/Kf
 pZ8+hla9hWG0sOVJ1pEIZvZEuRdV5VZMoL56jPOPmHr4LQ6CUELTG7rq1KW5wUY3pjyc
 IfYIY1d2U20I8Ok//tsAGBbP5g1QbRTuGGw05l78exDl3L0qFu0E5GHBFRhxXSlLcR3z
 e92nWjP349tgTTsJzPYLjwe4Y87QYjEu3a8zobUs172pJvmvSJ04Ks81b3rokWLejrIY
 s9Uw==
X-Gm-Message-State: APjAAAVjtcWp/Ei5SGV+HAfqhoTixCpIT/BLrFdAQpnfejI95smvybLh
 L8UL4muWzoSbswhDWSgqEV2kRA==
X-Google-Smtp-Source: APXvYqxR1C0qibko7LMG1PezMZ31oeA69glCvEQ0F42epnidGtatH29K43/7WTDAokJeLLP/uxYgZg==
X-Received: by 2002:ac2:43d0:: with SMTP id u16mr17747610lfl.38.1564303657710; 
 Sun, 28 Jul 2019 01:47:37 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:27a:2699:90d4:a26b:38de:2b20?
 ([2a00:1fa0:27a:2699:90d4:a26b:38de:2b20])
 by smtp.gmail.com with ESMTPSA id o17sm11944620ljg.71.2019.07.28.01.47.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Jul 2019 01:47:37 -0700 (PDT)
Subject: Re: [PATCH 1/2] mtd: spi-nor: fix GigaDevice quad_enable
To: Roman Yeryomin <roman@advem.lv>, linux-mtd <linux-mtd@lists.infradead.org>
References: <20190726210830.1932-1-roman@advem.lv>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <5d84e5c2-77bd-bdff-9b69-8736c7ec016c@cogentembedded.com>
Date: Sun, 28 Jul 2019 11:47:03 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726210830.1932-1-roman@advem.lv>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_014741_662728_C0DACBAD 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marek Vasut <marek.vasut@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!

On 27.07.2019 0:08, Roman Yeryomin wrote:

> According to datasheets all GD devices are capable of quad mode, which
> is enabled via Status Register-2, bit 1 (S9). This corresponds to
> Spansion SR/CR operations. Unfortunately only gd25q256 datasheet is
> clear about Quad Enable Requirements (QER), others have no such
> information in datasheets.
> So define quad_enable for all GD devices to be sure.
> Also gd25q256 is an exception. There are two versions: C and D.
> First one uses S6 bit (like described in e27072851bf7d) but the latter

     When citing a commit ID, you need to also specify its summary enclosed in
("").

> uses S9 bit like others. To add support for D this should be handled
> differently, so, to retain compatibility, leave gd25q256 quad_enable
> callback intact.
> 
> Signed-off-by: Roman Yeryomin <roman@advem.lv>
[...]

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
