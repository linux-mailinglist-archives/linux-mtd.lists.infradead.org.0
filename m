Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D4EABBBA
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Sep 2019 17:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=46AeMhSrunXe9Mw4MmQVZrW2BRmU1khRBO91nUk+SU4=; b=JVAIoPgB6g+fcxoZNMiVIOTBn
	anO/KFtmug/31kfXJ/LU5kB/p8W0oDV0gD5d8cxgD6ppgC8AnKi8WCLpxXfONOoCVDxl+SRibnRCk
	6qNptu3d+VisyhzbYxGBrgqcOlrXZIvzpaO4Ec3pLo0ZxidLr338kBK1EdCABfiMVvAL2I/HTyJ7l
	cK2Oxvp7vpjSMG69qw4HB4uwmRFJWzWyHzNUCJ9EJ176/bNECnqL61pGqEE0ZOtcbPupjZJMASPJS
	6OyyXRL/7jCc9oaViUX2Qt5ifi9gnJWOupUOYESw0JezV6fPZUQnpoJqZ5HeQqBOlwv4iNr+LqNDh
	TVHKKhSPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Foa-0006IX-Ht; Fri, 06 Sep 2019 15:06:20 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FoR-0006Hp-6B
 for linux-mtd@lists.infradead.org; Fri, 06 Sep 2019 15:06:12 +0000
Received: from [192.168.100.95] (unknown [95.138.208.137])
 by first.geanix.com (Postfix) with ESMTPSA id 1891D639A5;
 Fri,  6 Sep 2019 15:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1567782354; bh=taChayUt0Te+CTRi1rAQP1tZY/GbTin4T6yPWAs8GHM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To;
 b=PSNVtknms4w/1PUnIvjLQQSv2tWa0/VahtQg7BCNsX3XhPWDRwz16JyLCVavKxkmv
 z91+ncgR4olBWJKjaSRNQPzV/2QekJMN4d9wDYnHT2AdLc8ZINs5ZPGTMWWqFRXE/B
 h/rCowcb6/18BknlUTFIoEqrTzh6wckUKxpmcvLiNmiZOsP9hk+3MnEsUV5++XQ0Hg
 ORMaIQ/ErxAdL86wCoeMK2+y/F5yhnhdgPpaaMQSRGc9oPnvTCE0pP/3zGt8oSsBsN
 vOAfbp8uVEVEuJtGu0EIlgCGretjGv1WCN02X3R4yFobEKJupQv/06k5rSjgdqNSEO
 EsphLBo7qDvPQ==
Subject: Re: [Bug] mtd: rawnand: gpmi
To: Sascha Hauer <s.hauer@pengutronix.de>
References: <6a333d0f-09b2-d0d1-a3a5-955b31b6291e@geanix.com>
 <20190906071200.mzaa5tlnpsrylwhj@pengutronix.de>
 <cb9b0e43-2f8f-22a3-39f5-de44d0c8f800@geanix.com>
 <20190906101315.3umeesryfrvn56jk@pengutronix.de>
 <0d1e4391-178d-c6f3-5485-54020cd0af80@geanix.com>
 <20190906132818.i4er5xj6hpwi77ip@pengutronix.de>
From: Sean Nyekjaer <sean@geanix.com>
Message-ID: <d1c51560-f432-954e-b289-348e7a3414f5@geanix.com>
Date: Fri, 6 Sep 2019 17:05:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <20190906132818.i4er5xj6hpwi77ip@pengutronix.de>
Content-Language: en-US-large
X-Spam-Status: No, score=-3.1 required=4.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLOCKED
 autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on 77834cc0481d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_080611_379207_D9865C72 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mkl@pengutronix.de, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 06/09/2019 15.28, Sascha Hauer wrote:
> Ok, both are identical, so this doesn't bring us further. Have you tried
> the mtd test modules?

mtd_oobtest: OK
mtd_subpagetes: OK
mtd_speedtest: OK

Any idea to where I should look?

/Sean

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
