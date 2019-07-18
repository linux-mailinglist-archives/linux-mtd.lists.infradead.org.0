Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AB96CC49
	for <lists+linux-mtd@lfdr.de>; Thu, 18 Jul 2019 11:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4yLKP8nV1MWHh/4KtPOg+w1mcMDFKZJ3Z2VBVAwBbw=; b=ZUU0f5c3nFFj1e
	+t/F0BmdZPEXmKb5rF0k8ZYPGTZO2wd+j6elZFScGbOmfJiTWuHLXTpk5AgUx4JWm0adPgxSiEZ5T
	qDWZnw7d+O3rDMShSSOu0PxPsZYYnsHC+/ZWv6PAHY4VouJrIw2lb2wOa50LFfOcHlZpogVV3tTa2
	5ulRT3tjqEoYePcMbFltk/zCZ6Z2FBO4gT2dnkDwDqe+6TiFOtoL1Ng5H3LfDi1xvcjQdTLzFEuIT
	IVDLc8LITeX/SrnvjIuj8lMbJLKiWsx0qw4DLpPcoq7Hl5PmkvYQ7C9FkLZ8tewtyImGXVEBjMok2
	cm5qvFniEUXVfAiQSFtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho31u-0001oB-EQ; Thu, 18 Jul 2019 09:48:50 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho31h-0001no-CO
 for linux-mtd@lists.infradead.org; Thu, 18 Jul 2019 09:48:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 14BED181821E1;
 Thu, 18 Jul 2019 11:48:35 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id jOIMWke-7ZIQ; Thu, 18 Jul 2019 11:48:34 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dRVnZsxDGkjo; Thu, 18 Jul 2019 11:48:34 +0200 (CEST)
Subject: Re: [PATCH mtd-utils] mkfs.ubifs: fix description of favor_lzo
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-mtd@lists.infradead.org
References: <20190718094258.8521-1-u.kleine-koenig@pengutronix.de>
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Openpgp: preference=signencrypt
Autocrypt: addr=david.oberhollenzer@sigma-star.at; prefer-encrypt=mutual;
 keydata=
 mQENBFZyf0YBCADHyKhABhxthCC9n48pvsuk5p3IEdYXMs8Apenh1N/Z4cViAz/d/nSCZ+FG
 FX/PSubEzq8AilZLejchAltaORCvA1Y6FgTlpcdJ6gHDfStDbJL/vk5N8aL7YNF7VfjTRntB
 tKbhKcrG05nbdNjIioAm04pt9rx5mV5KMbf22/FdZpOSSsC6/N7b/cFH9+fx8kwi4pNFuJwr
 BkWRuQ7rEtCoSpd22t+Vh9qA7kymW9gWY405258jnN65jBO7ElqU2CCuGRPg6uryAHV3RVCB
 9j9AE3HLacQReFtt5ylyydSQbaK4K9asnd7U2/C11vIuuciXCppX4bPap/pMnGpzw0UNABEB
 AAG0N0RhdmlkIE9iZXJob2xsZW56ZXIgPGRhdmlkLm9iZXJob2xsZW56ZXJAc2lnbWEtc3Rh
 ci5hdD6JATcEEwEIACEFAlZyf0YCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQvOXc
 PHQaAtFuEAgArXOhaoaVvCMVCa5N25Q/+Q6K1wrVpPmkH89yhQqCmfM6f+2VM5MGFDPfaSJ3
 5fBDH0iwBQwlXIb7NSXWtzdXX9rMvJkJqv45TgeKtJApf/sRhmcN+clrwzP8oZQbxkP1YWzo
 Vwo4lOb3Kv7aY9yeCjqNbdJJ57NpvYOUrzrCpGkrDPBBQOvKF3wbq3oU/o3dT23NDeQ20jXg
 quJf/PCw6WCzRxqg58wH02MdMDQe8vByzVig2bM2e7DErtt+hPK/Dmdsqgns+Z+SrQcOvRa3
 GMAHAuHB0u2LhYO6NyaNCgzdgutorilYcq7FEKr8XqwOnfVmZdCW3qGKmLbn6qMEdLkBDQRW
 cn9GAQgAvugF8cFjv2Zs4BBb44SnxGawBySC1bMRas/MjA9EMHUAx/StcecQmxnl6BzEyGpr
 +TRnXIzcb5xI8SxitBDU5MLvwsHgNvpYp9fscd4kWP7oMir9ta3Q8SvT4OLbO4FZBGaURzGP
 ak8JmjMMtOoOBh4meOjz6GrJe9UIGxT94aB01w7YohfBANzK8xyk4ykKC5Op4XgaaMKOEQUa
 h7wajcojYSlvgOiXqEisMHlRDAW6sXL2sEM7TIpvYhy9txMLllpkYb0Pu1BvUpY/unsybWKA
 FyiTmeiY+nEveUvqX6Ef7BWdClBeCk2UaRvtcoLd22VxMlKTniHQcNMOXlRRawARAQABiQEf
 BBgBCAAJBQJWcn9GAhsMAAoJELzl3Dx0GgLRPtcH/jD6rn2+VIKgrHdt3ao3Abpu2fqYfwbI
 yPAtpXOddDptVq+0A/2arXT1Y8+jNSZpbAg8K+bLaEAcSUEjviKMpfI7ppTUBuGKrpgc5xsi
 UpKkJCb7oB1ZraIBNBPtPPVUhbwLie4uW/LVt+8rBKz3W9KEDOsT0ZCG/pW8Ld+EpDR9l0fm
 qoVHaw8PhLAtez+B7HS7Hv7iJPDtX85kFYpud8kIPENXVn9EjZudyMWgZb2LhYlcavNcszgR
 7In6ift5SNySojCOfAV0iKZb8QUXWktLleY8kQ8jltOsSRTuO4PDfzvtCQDixUw4tQ7WLwDT
 qyUpot0oG03vtSG4LIRCdxI=
Organization: sigma star gmbh
Message-ID: <0a6eab3b-017f-82a2-5631-e6b3705fcf88@sigma-star.at>
Date: Thu, 18 Jul 2019 11:48:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718094258.8521-1-u.kleine-koenig@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_024837_571815_A6057E98 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Applied to mtd-utils.git master.

Thanks,

David


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
