Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B7155900
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 22:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZkhS2nvj63UUvvwm7wZ15mP3MSriqUOb/ZJBuRJr+Jc=; b=sijDmaaBMedN3egAnP0MtOngF
	YtKGHiqMgIQrt4zTFangNKATRuVbyxErFji4g/bfBIc5nPo75fXHt077XCcGV47XG2dpzRXWpNcT2
	t+hY9SPh5kniW7ndJILXOwLjguq00mlKqi7NeiOofPE++CVeqSqKH0W6SjdAgMB9ESh5i+Xk2fzEP
	I9EDHBfIQpO6kGN/Pdxh1YM/IR7/oGrJtTirGj7ZC8qCNMAwlq1Cec0BiYNkAM4XxO7ZxfYjFtqgU
	8e1yLMrKjIwhK+F94CKeWir3kiKQVPkspGe99WBRYdCkzr9pxJjNHSgojWeNRT8/umOOq6uu/Sy/f
	TKjAAtlnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfsCT-0006jn-6G; Tue, 25 Jun 2019 20:37:57 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfsCF-0006i6-PN
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 20:37:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id e5so60103pls.13
 for <linux-mtd@lists.infradead.org>; Tue, 25 Jun 2019 13:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dilger-ca.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=k9wVBI3MNSxJVQhODLuSRbOf+SmT1l1K5RRF5+DdhGM=;
 b=i0tlux+8FNEu0ugkEvUUlD4zKy+jo4LmPTngoA6r4KZwHDBk4l5v9aHPUQEnX49/5g
 z/5lU03hiGUesQ1zP/lPDO/M9fU515Y8oNEl0EKjwdC7dNyZmZQEQEJzGU548pSrAizw
 AlBCGdOUNg8gVK9FeesIiFWJzJ6YbgT5nrsBvzAUmh99yf7q8hQlgwIm8HPdOmToZugA
 nEmrM6blVwgyo7dN5eFPje1f1HwAtA+5XwodCP1ntkD5mvR/FwjSqB5AJn7YMTtfEeor
 5bhYLcubsCaGOlgF0onarHD40ER7JyKcO4a/eslTTHQKCN3GB1Tra4WgBV7T6KYa0chE
 ps9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=k9wVBI3MNSxJVQhODLuSRbOf+SmT1l1K5RRF5+DdhGM=;
 b=RGTu9RwJ6I6z+ptApQCZcSninSsbrvzp6rAWwn7kob4IZ79L8+ZeG7s+yAcumd0XfU
 vZK/n4ahYByIt+x95l2xPAWnNt9Gf9aTplCPWKqBx1JZeKU5fRF0tMVS4YeLRVnVg9K0
 pPZELONkyd9kvxsh5GzDx0BfKNe00YXe2E43KH3ACykpw93qhzX0/3poW1sNOK0yf3eG
 9SxM2Syqd/O78W9Sx/H3XxEAJUyQ96ZOPhiOOyMzaY4uanhFPexMSwyNpQpFPJG9+qRe
 GtFMd4c/IJFbGrfEQkWYVz3OTDCZ4rE7SVjbpO4ytD4p+4oR3clbL3HfSlDVzMVOq5j8
 WZ2g==
X-Gm-Message-State: APjAAAVooAjL3rZQSYT3Ghu8ZGITyfQ61u2IDR+7CZBjckN3TXWXEDxu
 d9IZjr4n5AYiTzil1DTqwgVA1A==
X-Google-Smtp-Source: APXvYqxrr/uL0yeWv0l0AFEkJ0fiuFxZszwvIRMBTgsPNJXwasc7ZXW/q9+Il/kiADkCo486i0NA9w==
X-Received: by 2002:a17:902:f216:: with SMTP id
 gn22mr690564plb.118.1561495062448; 
 Tue, 25 Jun 2019 13:37:42 -0700 (PDT)
Received: from cabot.adilger.ext (S0106a84e3fe4b223.cg.shawcable.net.
 [70.77.216.213])
 by smtp.gmail.com with ESMTPSA id m4sm4145961pff.108.2019.06.25.13.37.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 13:37:41 -0700 (PDT)
From: Andreas Dilger <adilger@dilger.ca>
Message-Id: <E84C8EBC-8341-49E5-8EED-0980D158CD50@dilger.ca>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: [PATCH v4 0/7] vfs: make immutable files actually immutable
Date: Tue, 25 Jun 2019 14:37:37 -0600
In-Reply-To: <20190625180326.GC2230847@magnolia>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
References: <156116141046.1664939.11424021489724835645.stgit@magnolia>
 <20190625103631.GB30156@infradead.org> <20190625180326.GC2230847@magnolia>
X-Mailer: Apple Mail (2.3273)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_133743_966345_DBDCCEB9 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, linux-btrfs <linux-btrfs@vger.kernel.org>,
 yuchao0@huawei.com, linux-mm <linux-mm@kvack.org>, Chris Mason <clm@fb.com>,
 linux-mtd@lists.infradead.org, matthew.garrett@nebula.com,
 linux-nilfs@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>, devel@lists.orangefs.org,
 Josef Bacik <josef@toxicpanda.com>, reiserfs-devel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, dsterba@suse.com,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 ard.biesheuvel@linaro.org,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs <linux-xfs@vger.kernel.org>,
 jk@ozlabs.org, Jan Kara <jack@suse.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, ocfs2-devel@oss.oracle.com
Content-Type: multipart/mixed; boundary="===============4286624646496418456=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============4286624646496418456==
Content-Type: multipart/signed;
 boundary="Apple-Mail=_D22B91A1-39DB-42F5-937D-A1034700DAE0";
 protocol="application/pgp-signature"; micalg=pgp-sha256


--Apple-Mail=_D22B91A1-39DB-42F5-937D-A1034700DAE0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

On Jun 25, 2019, at 12:03 PM, Darrick J. Wong <darrick.wong@oracle.com> =
wrote:
>=20
> On Tue, Jun 25, 2019 at 03:36:31AM -0700, Christoph Hellwig wrote:
>> On Fri, Jun 21, 2019 at 04:56:50PM -0700, Darrick J. Wong wrote:
>>> Hi all,
>>>=20
>>> The chattr(1) manpage has this to say about the immutable bit that
>>> system administrators can set on files:
>>>=20
>>> "A file with the 'i' attribute cannot be modified: it cannot be =
deleted
>>> or renamed, no link can be created to this file, most of the file's
>>> metadata can not be modified, and the file can not be opened in =
write
>>> mode."
>>>=20
>>> Given the clause about how the file 'cannot be modified', it is
>>> surprising that programs holding writable file descriptors can =
continue
>>> to write to and truncate files after the immutable flag has been =
set,
>>> but they cannot call other things such as utimes, fallocate, unlink,
>>> link, setxattr, or reflink.
>>=20
>> I still think living code beats documentation.  And as far as I can
>> tell the immutable bit never behaved as documented or implemented
>> in this series on Linux, and it originated on Linux.
>=20
> The behavior has never been consistent -- since the beginning you can
> keep write()ing to a fd after the file becomes immutable, but you =
can't
> ftruncate() it.  I would really like to make the behavior consistent.
> Since the authors of nearly every new system call and ioctl since the
> late 1990s have interpreted S_IMMUTABLE to mean "immutable takes =
effect
> everywhere immediately" I resolved the inconsistency in favor of that
> interpretation.
>=20
> I asked Ted what he thought that that userspace having the ability to
> continue writing to an immutable file, and he thought it was an
> implementation bug that had been there for 25 years.  Even he thought
> that immutable should take effect immediately everywhere.
>=20
>> If you want  hard cut off style immutable flag it should really be a
>> new API, but I don't really see the point.  It isn't like the usual
>> workload is to set the flag on a file actively in use.
>=20
> FWIW Ted also thought that since it's rare for admins to set +i on a
> file actively in use we could just change it without forcing everyone
> onto a new api.

On the flip side, it is possible to continue to write to an open fd
after removing the write permission, and this is a problem we've hit
in the real world with NFS export, so real applications do this.

It may be the same case with immutable files, where an application sets
the immutable flag immediately after creation, but continues to write
until it closes the file, so that the file can't be modified by other
processes, and there isn't a risk that the file is missing the immutable
flag if the writing process dies before setting it at the end.

Cheers, Andreas






--Apple-Mail=_D22B91A1-39DB-42F5-937D-A1034700DAE0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIzBAEBCAAdFiEEDb73u6ZejP5ZMprvcqXauRfMH+AFAl0ShhEACgkQcqXauRfM
H+CbrRAAps35LK3poNlahSXPmgZ5tD+3nAlaeG8JU1XTggnEeHdAHY7wdK713thT
OumdwU7nj1s+0ngxeUxPU/ZVWyuL2LjugpWEfw8lf0N/16hoTIUPBAe7kXce3jb+
eg72QT36y1srscGQ/95rv/DPfelxzC7WiVYV7ZHIIF2Cq31B34cZ7GF0zpi6oZSH
RKioHBOX1Qez1CksvAevhtSGf9e0dF1hNx7gyoVFnGb5V72P7WGGQqWSW4nSJvMe
xhzkT0wLU28MioHsIcnqwnZJdvCb66Z1FGvAwsNItELe2tch4JzZjVR5sbq/g0+Q
CpDZk350WiKaFzo9m1TO2Eiiog2vS1bqO+hZuwf7jPqcfIa6Tu9BdCx9U/bKp/rN
sEtDj+p4qnjTCX2ggozPxye92wzhbF2o25jjoofBh9x9ShQ3GAc/gaTxcR9fpuWJ
UmMwXwKMVXP/kvBaclrbz/zxaeo3ga7z3mFGgzxU6we9M5x1Lo+ppFxRpEPMIVkW
LUEIQ4emE6yqzOWLWH6iPnxly9Jtzye3jsiq6s7RPPUGHn1/SCdhVZG130vKEpkC
IcSmmJGlhPcI8wJ5/gwhAoxm9yLa+t0oH/Y6HUoNc722A3sCVRV5JWoHuK9MKBDK
IPKKud+iKoNON0zr28k4iNyK1XAO+7yAqjfBAmdm0grbW/nItxg=
=YBbV
-----END PGP SIGNATURE-----

--Apple-Mail=_D22B91A1-39DB-42F5-937D-A1034700DAE0--


--===============4286624646496418456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============4286624646496418456==--

