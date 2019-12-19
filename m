Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E50F125999
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Dec 2019 03:32:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=07lJnzPtVpki+nRa4HGQZc8W7qUELsc5RPQR1KfBPkw=; b=q3GiEjbEqI368ffBthP0vvYU7
	hBP63CSAAI0gRrnXlTQycmRFdGbxSbVKX7raGrR/zrz9dgu2TzW5OGHHZoWru0a06YuHkWaiHSP7A
	vrxhFi0iMVeS5mkEuTzACUBRf48ORyBzC4fNnRHKzkRuXr5rlHV0Nk+azKfgQ8yEAzEJafzk9rjgm
	kmupxaDYvCAgWuTSCXInuoQR+zPhT+tnoO/8uswi+xqY7VQFg8Y4jo3sG8H2qwlWwdMm74IZ4F2Xo
	ks9B0IaZkf5CpwZbtStf433qEGyQ3QPC7LwPonVy/Nb9XnncUodXX4doTK4P3ntsG/vOaSkn/97w+
	BzK7g1Z9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihlcE-0008O9-1Y; Thu, 19 Dec 2019 02:32:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihlc2-0008NV-Uo
 for linux-mtd@lists.infradead.org; Thu, 19 Dec 2019 02:32:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so2303319pfn.4
 for <linux-mtd@lists.infradead.org>; Wed, 18 Dec 2019 18:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=8EZFQxOfL//tqCMEZCkA+NRJmjPQMfyGk5WDlydLVjY=;
 b=V8qWJZPShBfgpsj9kSAQ/lE5x3lQQegNHXTDsRWig45BKvkSlIgBKTiBRSWHofdUJu
 J9CptSMNzOdmXVTu/ZGHqhk37V7ZYXOhx/s6csYL37tMSiwbb+HI1MB/aFhwf/LkqmDd
 RXAa5xG5unpA/5z9t2dENaPpiUAgbOigj416B9NN0auczlEglNq4rVTlim/j8IWvWjib
 h6H16TuC1OkplXiwV5dlJWP8i+MzEV6qh6kMWzlB9k62h7Z3Z0IWttpo+i4ckmOwbxFI
 SzVu/uhqyzv5LsDHOpVdVNbnTEoTStezBDtYLpscgPBNOC2EU5HU5ZquAH4AS7+TpKZf
 KNzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=8EZFQxOfL//tqCMEZCkA+NRJmjPQMfyGk5WDlydLVjY=;
 b=hsI+Z2bevdBufIdwpdoh312Csk+duc54UyW/2oNecdXJCSkx4CndYEmpxExLMwWK/J
 IKbdlkH5ve+m7VDAmNh5Rzd/ceTaYp49g94QW3EUZ9dXhiCP8/EeN+L8f5/5DgJEojbb
 q5HAxUlrGjg8xk1Rjonh5coQy5zgKsP26BV7qTVnumal8n22aTfFAmjLk6qohRYcv0HR
 KV1NeDjidz6/YgSqpZevvnaMcXSLB4nu6euH2nu1EGvxhbJpTotVt2BQzn9xbBqdgTyO
 k3uPNMC4NRVOX+56bJ+/gx6erSUE5xr/MVWyXdVHYb45JZM33PoGbIaw4e5LSy64xzVP
 zEsg==
X-Gm-Message-State: APjAAAXmGTukwVzu38HYs5BL1wfN9Vn7B7VPQPvGUPpRYQaUYH//9CGr
 VwPZ6Xg8MbUOgGr3AgYDE+Y=
X-Google-Smtp-Source: APXvYqxxLsiRvz7mROTRQgANP21D4Toxi9TuYC+WXkmwNoWB6cb/Tj2l7lGtVbeXHf/fWzTR0eOuJg==
X-Received: by 2002:aa7:9d87:: with SMTP id f7mr6718941pfq.138.1576722745170; 
 Wed, 18 Dec 2019 18:32:25 -0800 (PST)
Received: from ?IPv6:2402:f000:1:1501:200:5efe:166.111.139.116?
 ([2402:f000:1:1501:200:5efe:a66f:8b74])
 by smtp.gmail.com with ESMTPSA id x4sm5309685pff.143.2019.12.18.18.32.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Dec 2019 18:32:24 -0800 (PST)
Subject: Re: [PATCH] mtd: maps: pcmciamtd: fix possible
 sleep-in-atomic-context bugs in pcmciamtd_set_vpp()
To: Dominik Brodowski <linux@dominikbrodowski.net>
References: <20191218140552.12249-1-baijiaju1990@gmail.com>
 <20191218172813.GA338501@light.dominikbrodowski.net>
From: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <42939a91-baab-54ad-bb4c-8a77e4418f2f@gmail.com>
Date: Thu, 19 Dec 2019 10:32:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191218172813.GA338501@light.dominikbrodowski.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_183227_019005_5F89B7B2 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baijiaju1990[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baijiaju1990[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 2019/12/19 1:28, Dominik Brodowski wrote:
> On Wed, Dec 18, 2019 at 10:05:52PM +0800, Jia-Ju Bai wrote:
>> The driver may sleep while holding a spinlock.
>> The function call path (from bottom to top) in Linux 4.19 is:
>>
>> drivers/pcmcia/pcmcia_resource.c, 312:
>> 	mutex_lock in pcmcia_fixup_vpp
>> drivers/mtd/maps/pcmciamtd.c, 309:
>> 	pcmcia_fixup_vpp in pcmciamtd_set_vpp
>> drivers/mtd/maps/pcmciamtd.c, 306:
>> 	_raw_spin_lock_irqsave in pcmciamtd_set_vpp
>>
>> drivers/pcmcia/pcmcia_resource.c, 312:
>> 	mutex_lock in pcmcia_fixup_vpp
>> drivers/mtd/maps/pcmciamtd.c, 312:
>> 	pcmcia_fixup_vpp in pcmciamtd_set_vpp
>> drivers/mtd/maps/pcmciamtd.c, 306:
>> 	_raw_spin_lock_irqsave in pcmciamtd_set_vp
>>
>> mutex_lock() may sleep at runtime.
> Thanks for noticing this issue.
>
>> To fix these bugs, pcmcia_fixup_vpp() is called without holding the
>> spinlock.
> I don't think that this is the right approach here -- we lose the protection
> against races in calls to pcmcia_fixup_vpp(). Instead, we should change the
> spinlock to a mutex, which seems to be sufficient here. Could you prepare
> such a patch, please?

Okay, thanks for the advice :)
I will send a new patch.


Best wishes,
Jia-Ju Bai

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
