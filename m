Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE5CF3B62
	for <lists+linux-mtd@lfdr.de>; Thu,  7 Nov 2019 23:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4d4FyWd7V36s1JBWSEKKOx9NeCzGVaa0vIR/apykoko=; b=bVccW3CJWwj6gs
	yusKKx5NBK4Sn3w6KxzXwi3zm76ZD/GLjYR1s4BWg8yU2IYu45zlBXhXkH4x8pQMMExjXPejhHMzb
	/hVx6LWg525AoRFoQyUuWkGR/IJQxMunXBKP+vcC6pr66Fg5O4+jAiGJVRhp5Topjossib+7fvAhi
	isR72bIDO09C6Yz3GAB1lHzRTPcRYSRLqUcKraqn6lCs93AUnWs1UALiF9L7uQHGxqNr4drWGQsuW
	zbm1t0UU49EdUzPZsjf4YcJE/nAD2BHSdv7jSdC32asFnAczBdbf1bg4o99ZyRgIVM6hUZ2YlkKLu
	okJ4yL7GNsxHfu0NPTUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSqH7-0006SA-FA; Thu, 07 Nov 2019 22:29:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSqGz-0006Rp-Vf
 for linux-mtd@lists.infradead.org; Thu, 07 Nov 2019 22:29:03 +0000
Received: by mail-wm1-x344.google.com with SMTP id a17so5163831wmb.0
 for <linux-mtd@lists.infradead.org>; Thu, 07 Nov 2019 14:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6nN/qEWNXpFbQbxaIwKQqqDYC//pMxwZnTPgHvFsAuY=;
 b=BfwjScWVqpByQ6yV8bvKWvrDc3BfW8Wc06SF54ClTCKME+ah5d8ELL9kYAIfA1o7JJ
 jn0DlKh+zEd0cD0PcUZ2AzTzp/35oQMxmJP5t5pck12/ktex/MSPOdxz6YaWMPWaxT44
 x1xVH2Z8qVun1lzxPTFhqyYQJYKY/dGApWkUO95h93j3/SvBVkZu6yJXKp4wDQv966AG
 P7iU8iRfi+Z4H+ANSriJgYlE7flwIoh8T24vlqH4K+OpDAX7Y263Rf3u5RKgzKWu8eAE
 XszjEl0lWZTkKn6+ws2Ok5vsGVibk5r5BBJDpQ1oJaCHv0HdldDZI28ZcRb9Ikp70hjc
 /ywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6nN/qEWNXpFbQbxaIwKQqqDYC//pMxwZnTPgHvFsAuY=;
 b=UxO/JVWoA4q0tfLFwhd7Uu5cMG60GpATH5vXgIvETFi1774QHfmFDC8JQKk8P2ncAa
 +yKH/b+QM1ksJqxJH8dOkR3sYMJqKcyRczZJOAMp2jMOjZenNrzcLeOiQEPIZ20LoHAP
 yC9fkE0bOAfOu1MFej4CWko06uYh/Qofif2o/1q+xNKYE6qRdqtVh2mikQqUNEWJwb7L
 bktYNb1eLFl2v0r0cD6tX3YE9DcAlhfxNRSW+D3odITaHnYCSUDysVhx/4it7RxJ0lNK
 UXK4IucFSIdNBIb6GdtqIZvLcQQha/Hsrau26XcXABnZen5sQ1HyZRnhCiZ5IJLrtV5X
 xDqA==
X-Gm-Message-State: APjAAAVcZsmLWlZftdiYH2dCwRzplp+Apf3Zz5EAMDemNdlN0gB/0pqG
 WkgXqxCzz+OWuaMs9g4+VvpCVzuqniPf+q/wrEQM0Q==
X-Google-Smtp-Source: APXvYqyIJOGGmztOfQBWw9khsDMc9KaoHxql7AbJ5xWlpOPsWX4ohsG/akHPa9GgolYDnlBRFvYhmSe17bGRdRVGlis=
X-Received: by 2002:a1c:8055:: with SMTP id b82mr5349522wmd.176.1573165739960; 
 Thu, 07 Nov 2019 14:28:59 -0800 (PST)
MIME-Version: 1.0
References: <dd66d7fd-cd10-d8f5-b54a-17647d32a81a@xs4all.nl>
In-Reply-To: <dd66d7fd-cd10-d8f5-b54a-17647d32a81a@xs4all.nl>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 7 Nov 2019 23:28:48 +0100
Message-ID: <CAFLxGvxOSyp6SJ9bgh73Ky=meyRms4GaZimRf2qveC2KvgnB0Q@mail.gmail.com>
Subject: Re: [PATCH] mtd-www: FAQ note about user-space tools
To: Willem <itsme@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_142902_042672_F41ACDA1 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Nov 7, 2019 at 10:39 AM Willem <itsme@xs4all.nl> wrote:
> the attached patch contains an update to the mtd-www ubifs faq:
>
>  * Mention user-space tools for unwrapping UBI and UBIFS images.
>    Note that I am the author of the ubidump tool.

I'd rather love to have these tools properly reviewed and upstreamed
into mtd-utils.

From a very quick look it seems that your ubi dumper is not correct.
You cannot compare LEBs without validating data_crc and copy_flag fields.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
