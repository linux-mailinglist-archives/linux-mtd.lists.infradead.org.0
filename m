Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED13CB9369
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 16:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bVBoTt2I9kMrLxLj/Ny7gxC12dg+QOt9sEhaz6xgZ4w=; b=kD5kVfkWH0n7Ylnuz2dhDliYx
	5BZkMyGiebvVRFc/vy1S6e4jvOKQ7UzHUDzu1nOm9kH13TyJUVk0U/r4cwkwRzbi1FBeQ74F9TqE0
	giLyNA1lCCK2oheJ2gwnZziKE9X3SnHy4h4Fc9QKJKKPjpTCMMV3rQu1yDq4mbfemwNrQiU9LbhWT
	ntVA05aKSLW6F2HlhMrFV167ZBZd0Z2XoBgIyw7/LTJKbhmpHP4XKFhaWowAcJkSZLiQ5x8fLNT/F
	UuyRZ+k3M5NEsa9obGPwkAXcURngXPVyEDLKAYEc6m6Y/UkZPMo6tUOkwPro+GvVIBFuNgG5RSnUY
	jL5NkZGCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBKGg-0007Rk-4Z; Fri, 20 Sep 2019 14:52:18 +0000
Received: from 7of9.schinagl.nl ([62.251.20.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBKGZ-0007QY-96
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 14:52:12 +0000
Received: from [10.87.3.229] (unknown [145.15.244.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by 7of9.schinagl.nl (Postfix) with ESMTPSA id 4DB3E12508B6
 for <linux-mtd@lists.infradead.org>; Fri, 20 Sep 2019 16:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=are-b.org; s=7of9;
 t=1568991123; bh=RxO/XFI9f0TpihejqrqXW4f8LEGMXi0kDiqL7M0CUrE=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=S+RcDyciVX8yhpCGLkrrURGCggAOxdQRs6ym3gavzyqszk79sAzSlL+2HDLYBAFy/
 dY1SKHmmdj3YQoXhN+wYcXNhk80naMvfL3ZqYQceNG9WsXnK7d5/8IHYUMltCJQlO5
 ID35gsh1JlTrrV8OXlxaVcpxkuNrmB20yGma4IEk=
Subject: Re: Missing all ubi commands in mtd-utils
To: linux-mtd@lists.infradead.org
References: <CAA=hcWRK-ChXxovKqSLpDF+JO7DtjginYXY33O-xtEAq25MiuQ@mail.gmail.com>
 <20190920111010.AF800240014@gemini.denx.de>
 <CAFLxGvwN1_BJ+3iB8fdKH9cJ_XEr_JvkToFAhxTzmK=FsixCbA@mail.gmail.com>
From: Oliver <oliver@are-b.org>
Message-ID: <4c95dadc-164d-ca0a-a1a8-1b4cac76ece9@are-b.org>
Date: Fri, 20 Sep 2019 16:51:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvwN1_BJ+3iB8fdKH9cJ_XEr_JvkToFAhxTzmK=FsixCbA@mail.gmail.com>
Content-Language: nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_075211_556162_555D1F7D 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 20-09-2019 16:33, Richard Weinberger wrote:
> On Fri, Sep 20, 2019 at 1:10 PM Wolfgang Denk <wd@denx.de> wrote:
>> Probably "ubifs" is not set in your DISTRO_FEATURES ?
> Yocto splits mtd-utils into many sub-packages, ubi stuff is in mtd-utils-ubifs.
>
alpine also splits them since a few months into smaller packages.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
