Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4B2162792
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 15:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=thFiu6pn5zKEoK0YgClRGZE6D4I4XCvFTvPxW6pYGSw=; b=PjGUOFWVPrtg9JMAij9rvDgTt
	jZR+JFQftcnGlsKiCvt9VWaOdSCuromzrah7Q73CeQcYGq0c0pjAC4h7y/o8Rm6KQtl5XHkqBExDp
	UJmdcedxlUIxqAOoBbJZRhitRvZQ3OFnwRf96R5mhoe3Ek2vnpN5CDrypOI2DVqkJ//Vo+72egG+X
	NqBywy95paWYRQwBNANAXH8cRbAHXvU+/XaSDmN30RQIGLKPhFsHwwQ0z/Jcei74stfgBGphpwFma
	XAG0PSAQg3eT3Ic9walXjbDhqhgPMvLJ1Wxdw2Y+XgiWotc5kCHI4ncKOkLgc+voc9WZNK5o8pNd6
	R+TPA8hBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43Qa-0002jw-P7; Tue, 18 Feb 2020 14:00:44 +0000
Received: from smtp2.axis.com ([195.60.68.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43QS-0002ee-El
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 14:00:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=1777; q=dns/txt; s=axis-central1;
 t=1582034436; x=1613570436;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=/Yaks5Z6bwA1HY9Y+pxUMqoNpuF0dxGJnHauBER1ZxA=;
 b=FTWKjIszx9+mx5KAS8x2OJRHVMHzuilgghStb36w4cwzVPFjCbOVQeY4
 4AIbLB6+ATOt9OHstLMFrpu518j/yJ+hyS0ndg+de/8Izf+4+mCKNdG1F
 V1HRysEZiORdpVO5KmjYdKJ1TXCB5VpavSRQr0ar/X4AwOQdlSjgUH2qi
 mu9Xo3ty0rnL7UwW3YcefyD+/WYnDhwZyEtre6GWl0uU2SosNwm5qqZKN
 xjFtKwa8yVM79xHjetx1wHBlS1VTFhWrimfiMlC+4f2h4zEi0WF6pfHvT
 JkTFh/8TMG7dl1SfccKgnARoo9FMN1FwgZK+zVQfRBjg4FYdrkow+N2KR A==;
IronPort-SDR: uizgC2zNQBKGPhV9Y3aMIF+Ng/n8DjkwG0k570ZQ80hAsKyK1fbsNBU+y/Q20Ua6WkMWLmzNzh
 CtDa/evFLE+jCdroJYN5APpTHBLrVMhTnF+OkbyxD+oR0OmXadk0T5Q9nXifrojGJ/9jKWM7G2
 f7GK+7BNTPUDSmlX9QqBww97h6bhOaGiNDBjhL+6CuYcQNRB2hg7zFO8P/QPP1Z3qZ5KaSL6SE
 muBHuIkF6KJFZmWsznwhucVfCczWSevdDcnKRsKw+XdMdRmUevFXj973ARkf/7jez8cND18IDu
 tyE=
X-IronPort-AV: E=Sophos;i="5.70,456,1574118000"; 
   d="scan'208";a="5396977"
Subject: Re: [PATCH] ubi: Select fastmap anchor PEBs considering wear level
 rules
To: "richard@nod.at" <richard@nod.at>
References: <20200113145622.18357-1-arne.edholm@axis.com>
From: Arne Edholm <arne.edholm@axis.com>
Message-ID: <764e1e6b-f6c4-dd45-cc7f-1adc557cb5e3@axis.com>
Date: Tue, 18 Feb 2020 15:00:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200113145622.18357-1-arne.edholm@axis.com>
Content-Language: en-US
X-Originating-IP: [10.0.5.60]
X-ClientProxiedBy: XBOX02.axis.com (10.0.5.16) To XBOX07.axis.com (10.0.15.177)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_060036_993609_8F85E819 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel <kernel@axis.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Richard,

On 1/13/20 3:56 PM, Arne Edholm wrote:
> There is a risk that the fastmap anchor PEB is alternating between
> just two PEBs, the current anchor and the previous anchor that was just
> deleted. As the fastmap pools gets the first take on free PEBs, the
> pools may leave no free PEBs to be selected as the new anchor,
> resulting in the two PEBs alternating behaviour. If the anchor PEBs gets
> a high erase count the PEBs will not be used by the pools but remain in
> ubi->free, even more increasing the likelihood they will be used as
> anchors.
>
> Getting stuck using only a couple of PEBs continuously will result in an
> uneven wear, eventually leading to failure.
>
> To fix this:
>
> - Choose the fastmap anchor when the most free PEBs are available. This is
> =A0 during rebuilding of the fastmap pools, after the unused pool PEBs are
> =A0 added to ubi->free but before the pools are populated again from the
> =A0 free PEBs. Also reserve an additional second best PEB as a candidate
> =A0 for the next time the fast map anchor is updated. If a better PEB is
> =A0 found the next time the fast map anchor is updated, the candidate is
> =A0 made available for building the pools.
>
> - Enable anchor move within the anchor area again as it is useful for
> =A0 distributing wear.
>
> - The anchor candidate for the next fastmap update is the most suited free
> =A0 PEB. Check this PEB's erase count during wear leveling. If the wear
> =A0 leveling limit is exceeded, the PEB is considered unsuitable for now.=
 As
> =A0 all other non used anchor area PEBs should be even worse, free up the
> =A0 used anchor area PEB with the lowest erase count.
>
> Signed-off-by: Arne Edholm <arne.edholm@axis.com>
Do you have any comments on this suggestion?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
