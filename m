Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C98F87A72
	for <lists+linux-mtd@lfdr.de>; Fri,  9 Aug 2019 14:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:In-Reply-To:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ylYZtUCkb/y+XKA5GQWi6SAb1dOHLpGldNIPyTPNMvM=; b=B1VCrnAoIGyNnaNzdu+Chz1lF
	XVvYqUH5FZUDg5nXXASAfWxpusr4hNIozJeti9HJwhYgGYF8Zhbw0dcvQf4JggPFGSnTmO2xiTrUP
	gNsXKY0irFRlMqXFBrqMsdDqmSVGkYqXpSHcMScbaw9VuMUueNHvE9G8OadLg8keXYXUe1/QAChir
	BlfgfbBD7H5C/sbV7l2F/DAFbvIIKRN1tbj5haRMLyq1gjd6tsCv9BkQCsi1zMYsQxyn0uWvFfX5Q
	N0CEsylUpkQETwSU2xicC76ujYlYxhsU7q1U0WnJHDp+it6JBJUpULqDeGH4VOw2YKs9ywB6dxNMS
	3/WgcftBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4Je-00067F-8V; Fri, 09 Aug 2019 12:48:18 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4JW-00066u-1N
 for linux-mtd@lists.infradead.org; Fri, 09 Aug 2019 12:48:11 +0000
Received: by mail-wm1-x331.google.com with SMTP id v15so5600771wml.0
 for <linux-mtd@lists.infradead.org>; Fri, 09 Aug 2019 05:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=79DCY58tnz18tWqHju7Xn/IaAuVegoEYok0Ok20NT3s=;
 b=gm+n18LXp59JCfJrw9KVcJQAnNpWyW/2aDqxV7IHfpZf6VedYMfDOZ6gaTxx2cFrlF
 WaGS092In6BN+sxoC7PdsM1OXXVxFD7kHTVwfkBXjPz/huomWLYC9mOAI+0c46mAndxc
 Ye4yiduK4fyBiZe4DsKeYNtFBx0IMasj2p6ycFCf94nT3AEjeQSiC+NeIbEfxe9yhl38
 Ay3+35pJ0sWU0+SZX3RhUb6AWPpeb/k+XO0+1nEEK5A3F0iCCYSBM4BFxXqMoN+6+ENP
 GEPzw8zRikVhsOLOwbJucrcjTETbndsOvLdc89vJ3btYeWf4hixt3BRtYBmMFYtoRwwe
 aYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=79DCY58tnz18tWqHju7Xn/IaAuVegoEYok0Ok20NT3s=;
 b=KG4gxWNO+256KQ9Me+134rKNcIgLMI09V08ctjnvbmivEO1M3zbwKr7oWwpm8w3VqE
 D0utCCu7Jbs9dUAD2l0Lqi7kfWlAVv66lBYgY4dxvS4giGbjQkuThh/vNq1QnJy6K/ye
 GhnAojoXaFSZk7+axUC1JWhJnofC+HV87RYCLl7ko+tSp3uwA3Sbp2hXhROsXWziiU/L
 uC1+e8dY3zm/XtQbu9CmmKIZX5sfSOuGT2QUB0QHVal8QhHbr8VTfNIrhJpeAJK1NVJn
 Gn/cQjRj9qYHhgoask8H5WIxn41fpiLGck7Lipy48H+KtmQ+yH5Y3SSPVh+ZuCirEg3I
 IAkA==
X-Gm-Message-State: APjAAAWq7To3buEbzWarkxwAJATZyzfkmZaM9Yp0b1cZ/SVGZR8Ca3GA
 B/YLUZXX1HbYjniBdflunZqYzszb
X-Google-Smtp-Source: APXvYqw2JIP3dZUmaxOcwYfhbz+/nJW4EcIuB/QsQdqFKdDjcrPUJ1WzPrcSAQ4EdBbk1E+xWVMMiQ==
X-Received: by 2002:a05:600c:292:: with SMTP id
 18mr10374067wmk.51.1565354887951; 
 Fri, 09 Aug 2019 05:48:07 -0700 (PDT)
Received: from localhost.localdomain
 (host78-240-dynamic.54-82-r.retail.telecomitalia.it. [82.54.240.78])
 by smtp.gmail.com with ESMTPSA id c1sm216797375wrh.1.2019.08.09.05.48.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 05:48:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 515fff40;
 Fri, 9 Aug 2019 12:48:05 +0000 (UTC)
Date: Fri, 9 Aug 2019 14:48:05 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [mtdblock] reading regions where %512 != 0
In-Reply-To: <20190809141544.2eb99774@collabora.com>
Message-ID: <alpine.LNX.2.21.99999.352.1908091422250.5673@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1908071924030.11090@localhost.localdomain>
 <20190809141544.2eb99774@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_054810_081626_DE901B13 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!!
thanks for the reply.

This is a SPI NOR device.
Reading from mtd device actually results in reading the entire content. Thank you very very much!!

Enrico


On Fri, 9 Aug 2019, Boris Brezillon wrote:

> Date: Fri, 9 Aug 2019 14:15:44
> From: Boris Brezillon <boris.brezillon@collabora.com>
> To: Enrico Mioso <mrkiko.rs@gmail.com>
> Cc: linux-mtd@lists.infradead.org
> Subject: Re: [mtdblock] reading regions where %512 != 0
> 
> Enrico,
>
> On Wed, 7 Aug 2019 19:27:49 +0200 (CEST)
> Enrico Mioso <mrkiko.rs@gmail.com> wrote:
>
>> Hello guys!
>>
>> first of all - thank you for your great work!
>>
>> I've been experimenting an issue with OpenWRt on a TP-Link Archer C60 V2 device, where an mtd region has been defined so that it's not 512-bytes aligned:
>>
>> mac: partition@1fb00 {
>>   	label = "mac";
>>   	reg = <0x01fb00 0x000500>;
>>   	read-only;
>> };
>>
>> So the region is 1280 bytes long; still reading from the exported mtdblock device will results in a 1024 bytes read.
>> This prevents users from making proper backups of flash regions. I don't know how many instances of this exist in the OpenWRt tree right now, but it's not clear wether we should fix this issue in the mtdblock or defining regions differently, changing their sizes.
>> Any help, suggestions or ideas very welcome and apreciated.
>
> Is this a NOR or a NAND? Have tried reading from the mtd device instead
> of mtdblock? I guess block devices have to be aligned on 512B...
>
>>
>> Thank you very much,
>> Enrico
>>
>>
>>
>> ______________________________________________________
>> Linux MTD discussion mailing list
>> http://lists.infradead.org/mailman/listinfo/linux-mtd/
>
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
