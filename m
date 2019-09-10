Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9030CAF37C
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Sep 2019 01:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXv1RNIMO5KAm8gPgMB2axdusD6KY7rzS20Jj1Fu3sE=; b=bRQotZ0Nm1Gjfe
	LAZEMaITrUX++keqd32oKCvlgK9XBqNwYgzRA6HjVPhBzrySZFdvwdUpSuzfK6I8UB0+iQ3VtP4JN
	DtE7GPBJeOsI+9kp+VNkISd5Tap7In3coF8//ofYNh+dUhqc8bhNhrfkDS+jV9Pc3QUm5GT3eQGnZ
	dN3WliCZDlTtSrjuvpLats1rTbcczxxm0HzTRylA+ATe58JdYq9wkJdj1jo37YLPUzG2PtKCiuyo0
	hRrYogO+h5qPFA6t1KMsrtd5cfB7TxKLTCt69VCmzPDx9dO4E2LgUGiLqO1DjTgEVlDWarhHQAbTq
	cW3m0mfn68l8VjUuVaBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7pzM-00035L-5n; Tue, 10 Sep 2019 23:56:00 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7pzB-000352-8M
 for linux-mtd@lists.infradead.org; Tue, 10 Sep 2019 23:55:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 4F7E41810A9A4;
 Wed, 11 Sep 2019 01:55:47 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 3lP3CxBe5w0C; Wed, 11 Sep 2019 01:55:46 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8Qb_v6njklbw; Wed, 11 Sep 2019 01:55:46 +0200 (CEST)
Subject: Re: cannot ubiupdatevol squashfs image
To: Richard Weinberger <richard.weinberger@gmail.com>,
 Boris Stein <boris.stein@gmail.com>
References: <CAFkQurKLwUdGSPNPLYLTrV7-fkWaL5RuP9up0nrN62L4pr-ivg@mail.gmail.com>
 <CAFLxGvz5JipAzu1x_0EPX6v-SZgxtu6n3-gZZ=DQS4FLMH0XSg@mail.gmail.com>
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
Message-ID: <bddc36a0-647d-e0d8-e1ca-501fd6522315@sigma-star.at>
Date: Wed, 11 Sep 2019 01:55:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvz5JipAzu1x_0EPX6v-SZgxtu6n3-gZZ=DQS4FLMH0XSg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_165549_590116_21D54E0D 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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

On 9/10/19 9:31 PM, Richard Weinberger wrote:
> On Tue, Sep 10, 2019 at 3:11 PM Boris Stein <boris.stein@gmail.com> wrote:
> 
> [...]
> 
>> [    9.006327] SQUASHFS error: zlib decompression failed, data probably corrupt
>> [    9.006359] SQUASHFS error: squashfs_read_data failed to read block 0x785a5a
> 
> usually squashfs has a blocksize of 1k or 4k. So block 0x785a5a is out
> of bounds.
>

SquashFS has a device block size that is either 1k or 4k that is only relevant
for I/O transfers. The actual block size is between 4k to 1M (defaults to 128k).
The data blocks also have no headers or checksums.

Meta data (inodes, directory entries, tables) is chopped in 8k chunks and stored
possibly compressed with a 2 byte header.

Once compressed, blocks can have any size and there is absolutely no requirement
for alignment. Inodes (or in this case the fragment table) can literally point
just anywhere between the super block and the inode table.

>> [    9.012677] SQUASHFS error: Unable to read fragment cache entry [785a5a]
>> [    9.019470] SQUASHFS error: Unable to read page, block 785a5a, size d6b4
>> [    9.026242] SQUASHFS error: Unable to read fragment cache entry [785a5a]
>> [    9.032876] SQUASHFS error: Unable to read page, block 785a5a, size d6b4
>> [    9.039529] SQUASHFS error: Unable to read fragment cache entry [785a5a]
>> [    9.046225] SQUASHFS error: Unable to read page, block 785a5a, size d6b4
>> [    9.052910] SQUASHFS error: Unable to read fragment cache entry [785a5a]
>> [    9.059573] SQUASHFS error: Unable to read page, block 785a5a, size d6b4
>> [    9.066281] SQUASHFS error: Unable to read fragment cache entry [785a5a]
>> [    9.072954] SQUASHFS error: Unable to read page, block 785a5a, size d6b4
>>
>>

SquashFS tries to read a fragment block located some ~7.5 MiB after the
super block (0x785a5a) with a compressed size of 54964 bytes (0xd6b4).
For a ~41 MiB SquashFS image this sounds plausible.

Uncompressing fails, so the location that the fragment table points to does
not contain a valid zlib stream.


Interestingly, the inode, directory and fragment tables seem to be at least
partially readable. Accessing the root inode and walking through the tree
seems to work, since there are no other SquashFS error messages.

*Assuming* that it is not the data that is broken, *if* there are no xattrs
and NFS export tables, the fragment table is pretty much at the very end.
Maybe the filesystem is partially chopped off at the end?


Have you tried dumping the SquashFS image from the UBI volume and extracting it?
(E.g. using unsquashfs, rdsquashfs or sqfs2tar which generate more useful error
messages about what actually broke)


Regards,

David

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
