Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604577C981
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 18:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/QKFL/8+Wj9NpiSkw5e/ufAdgNbk7WrEDp5B0n9pEg=; b=NCH9bKoSHXK+v+
	m+MxnJktk9qcK1LATOi4bSrhbavQCtGpy4a7ByiTQwASomrePUs5Pb+noubzBzB8tGKrz97Rn3tyw
	vr6YwScalo9Quk7M++7lo4P8aIK3s3cnCy5E4p8qpgA2tPNxEkrEJ9AWgd2HzQT5AWW8a0zL6fIJL
	aF2a/JTygA8zt0z3Z6W0BmLT1GydrjDSO3LLgEiD7TVW5HfayGBSrw3L91bOXi9si51ZzIRxEKO8u
	UPaCmhQU4Ty1dY+IPDc/OqMFzIu1+TG0TvYVexENEv+gGX9einorzkw7bsRynfW1QEkH8T7ASxVw0
	0MipjndqvFp6u3tThNiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrwy-0008L4-V2; Wed, 31 Jul 2019 16:59:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrw9-0007qV-EF
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 16:59:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so30727770plr.11
 for <linux-mtd@lists.infradead.org>; Wed, 31 Jul 2019 09:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mqrvp78QJlpAOzw9fgR7kExVE2j6YAgtswabVLFsEKw=;
 b=hDP6kaU1NcYTT8Ncbn8yYBCQdBrusiuNRh8U9KureQ4LZhhXGLpANTSfvgOfqQlZKq
 VPG7XZ4P92k/KXlBktnvxCF150d8d3KylfuVgVeKMa2iuEFsPUTMupjDUD67Z46OqmZh
 7SjvYV5dvK2PynVShna7gXH3d3FfIgcczAogHNoxzKxedgwHKSTVha6/NIazeKvyBtqo
 gZTdl1QA8a5G6h+1E1jh/03KSKvg/voO94DGIfJA6Xped+vEahzXhxfFCY/MWGvc505o
 uyMsIAWuHLM/OhdgLS35O/Xac5WdHB55F0HW+slYxtY8ijFN6K5yX0/q9GG2PxaHnXCe
 TluA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mqrvp78QJlpAOzw9fgR7kExVE2j6YAgtswabVLFsEKw=;
 b=uPIEu5utjrnfyVUwncNKSFMLLKVjLdDSe9N2fKgmEnKCKyweh8H1+R+FYRisXYHEX/
 1TPJ9CHVQByLaFyTv2J5sm/B3jioGNV2yngq78/xCOI2v/8X95D7hulE95tCVfCNHsSq
 fe3Yk14qCatYcAbEw07jQAnSPvIaqfO1n+g4GJ2pWouxUjmyhZICpmLD1pQHbQYbquA8
 f1Vjvoy3eLlgd6LXi/GviAeiPfzUZig3FEjSUxdJwVsmyHw6bqM7U5NM4wkh+8lRm+bX
 y/eO0TIy3dR0DBDHCnt+t15oKJowxqjW7YW9+VLXHRlaqFcrNjv2K5YLibHC8wpBikSZ
 djiw==
X-Gm-Message-State: APjAAAWZPcr3ZceoisleeUCvd2lMUvIkt+9qRx6VrJ7//87cCtqLrwt7
 I6ck4EyJl4Av1edNg+nOBrI=
X-Google-Smtp-Source: APXvYqxGMolBRhsvM9UzN1Lxeh7QHhb9SosmOWflXeRYxn78Bc9Zh2WWF5AnDKoq96esMVfQv4t5yg==
X-Received: by 2002:a17:902:76c7:: with SMTP id
 j7mr117914657plt.247.1564592328532; 
 Wed, 31 Jul 2019 09:58:48 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.gmail.com with ESMTPSA id f72sm2245954pjg.10.2019.07.31.09.58.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 09:58:47 -0700 (PDT)
From: Mark Salyzyn <salyzyn@android.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v13 3/5] overlayfs: handle XATTR_NOSECURITY flag for get xattr
 method
Date: Wed, 31 Jul 2019 09:57:58 -0700
Message-Id: <20190731165803.4755-4-salyzyn@android.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
In-Reply-To: <20190731165803.4755-1-salyzyn@android.com>
References: <20190731165803.4755-1-salyzyn@android.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_095849_684628_9C0216BE 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, Randy Dunlap <rdunlap@infradead.org>,
 linux-doc@vger.kernel.org, Martin Brandenburg <martin@omnibond.com>,
 samba-technical@lists.samba.org, Dominique Martinet <asmadeus@codewreck.org>,
 Amir Goldstein <amir73il@gmail.com>, David Howells <dhowells@redhat.com>,
 Chris Mason <clm@fb.com>, "David S . Miller" <davem@davemloft.net>,
 Andreas Dilger <adilger.kernel@dilger.ca>, ocfs2-devel@oss.oracle.com,
 netdev@vger.kernel.org, Tyler Hicks <tyhicks@canonical.com>,
 linux-afs@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Sage Weil <sage@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 devel@lists.orangefs.org, Hugh Dickins <hughd@google.com>,
 linux-security-module@vger.kernel.org, cluster-devel@redhat.com,
 Vyacheslav Dubeyko <slava@dubeyko.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Stephen Smalley <sds@tycho.nsa.gov>, linux-mm@kvack.org,
 Vivek Goyal <vgoyal@redhat.com>, Chao Yu <yuchao0@huawei.com>,
 linux-cifs@vger.kernel.org, Eric Van Hensbergen <ericvh@gmail.com>,
 ecryptfs@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 "Darrick J . Wong" <darrick.wong@oracle.com>, reiserfs-devel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Becker <jlbec@evilplan.org>, linux-mtd@lists.infradead.org,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 Theodore Ts'o <tytso@mit.edu>, linux-fsdevel@vger.kernel.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mathieu Malaterre <malat@debian.org>,
 kernel-team@android.com, Miklos Szeredi <miklos@szeredi.hu>,
 Jeff Layton <jlayton@kernel.org>, linux-unionfs@vger.kernel.org,
 stable@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Steve French <sfrench@samba.org>,
 =?UTF-8?q?Ernesto=20A=20=2E=20Fern=C3=A1ndez?=
 <ernesto.mnd.fernandez@gmail.com>,
 "Eric W . Biederman" <ebiederm@xmission.com>, Jan Kara <jack@suse.com>,
 Bob Peterson <rpeterso@redhat.com>, Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Woodhouse <dwmw2@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-btrfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QmVjYXVzZSBvZiB0aGUgb3ZlcmxheWZzIGdldHhhdHRyIHJlY3Vyc2lvbiwgdGhlIGluY29taW5n
IGlub2RlIGZhaWxzCnRvIHVwZGF0ZSB0aGUgc2VsaW51eCBzaWQgcmVzdWx0aW5nIGluIGF2YyBk
ZW5pYWxzIGJlaW5nIHJlcG9ydGVkCmFnYWluc3QgYSB0YXJnZXQgY29udGV4dCBvZiB1Om9iamVj
dF9yOnVubGFiZWxlZDpzMC4KClNvbHV0aW9uIGlzIHRvIHJlc3BvbmQgdG8gdGhlIFhBVFRSX05P
U0VDVVJJVFkgZmxhZyBpbiBnZXQgeGF0dHIKbWV0aG9kIHRoYXQgY2FsbHMgdGhlIF9fdmZzX2dl
dHhhdHRyIGhhbmRsZXIgaW5zdGVhZCBzbyB0aGF0IHRoZQpjb250ZXh0IGNhbiBiZSByZWFkIGlu
LCByYXRoZXIgdGhhbiBiZWluZyBkZW5pZWQgd2l0aCBhbiAtRUFDQ0VTCndoZW4gdmZzX2dldHhh
dHRyIGhhbmRsZXIgaXMgY2FsbGVkLgoKRm9yIHRoZSB1c2UgY2FzZSB3aGVyZSBhY2Nlc3MgaXMg
dG8gYmUgYmxvY2tlZCBieSB0aGUgc2VjdXJpdHkgbGF5ZXIuCgpUaGUgcGF0aCB0aGVuIHdvdWxk
IGJlIHNlY3VyaXR5KGRlbnRyeSkgLT4KX192ZnNfZ2V0eGF0dHIoZGVudHJ5Li4uWEFUVFJfTk9T
RUNVUklUWSkgLT4KaGFuZGxlci0+Z2V0KGRlbnRyeS4uLlhBVFRSX05PU0VDVVJJVFkpIC0+Cl9f
dmZzX2dldHhhdHRyKHJlYWxkZW50cnkuLi5YQVRUUl9OT1NFQ1VSSVRZKSAtPgpsb3dlcl9oYW5k
bGVyLT5nZXQocmVhbGRlbnRyeS4uLlhBVFRSX05PU0VDVVJJVFkpIHdoaWNoCndvdWxkIHJlcG9y
dCBiYWNrIHRocm91Z2ggdGhlIGNoYWluIGRhdGEgYW5kIHN1Y2Nlc3MgYXMgZXhwZWN0ZWQsCnRo
ZSBsb2dnaW5nIHNlY3VyaXR5IGxheWVyIGF0IHRoZSB0b3Agd291bGQgaGF2ZSB0aGUgZGF0YSB0
bwpkZXRlcm1pbmUgdGhlIGFjY2VzcyBwZXJtaXNzaW9ucyBhbmQgcmVwb3J0IGJhY2sgdG8gdGhl
IGxvZ3MgYW5kCnRoZSBjYWxsZXIgdGhhdCB0aGUgdGFyZ2V0IGNvbnRleHQgd2FzIGJsb2NrZWQu
CgpGb3Igc2VsaW51eCB0aGlzIHdvdWxkIHNvbHZlIHRoZSBjb3NtZXRpYyBpc3N1ZSBvZiB0aGUg
c2VsaW51eCBsb2cKYW5kIGFsbG93IGF1ZGl0MmFsbG93IHRvIGNvcnJlY3RseSByZXBvcnQgdGhl
IHJ1bGUgbmVlZGVkIHRvIGFkZHJlc3MKdGhlIGFjY2VzcyBwcm9ibGVtLgoKU2lnbmVkLW9mZi1i
eTogTWFyayBTYWx5enluIDxzYWx5enluQGFuZHJvaWQuY29tPgpDYzogTWlrbG9zIFN6ZXJlZGkg
PG1pa2xvc0BzemVyZWRpLmh1PgpDYzogSm9uYXRoYW4gQ29yYmV0IDxjb3JiZXRAbHduLm5ldD4K
Q2M6IFZpdmVrIEdveWFsIDx2Z295YWxAcmVkaGF0LmNvbT4KQ2M6IEVyaWMgVy4gQmllZGVybWFu
IDxlYmllZGVybUB4bWlzc2lvbi5jb20+CkNjOiBBbWlyIEdvbGRzdGVpbiA8YW1pcjczaWxAZ21h
aWwuY29tPgpDYzogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+CkNjOiBTdGVw
aGVuIFNtYWxsZXkgPHNkc0B0eWNoby5uc2EuZ292PgpDYzogbGludXgtdW5pb25mc0B2Z2VyLmtl
cm5lbC5vcmcKQ2M6IGxpbnV4LWRvY0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmcKQ2M6IGtlcm5lbC10ZWFtQGFuZHJvaWQuY29tCkNjOiBFcmljIFZhbiBI
ZW5zYmVyZ2VuIDxlcmljdmhAZ21haWwuY29tPgpDYzogTGF0Y2hlc2FyIElvbmtvdiA8bHVjaG9A
aW9ua292Lm5ldD4KQ2M6IERvbWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29kZXdyZWNrLm9y
Zz4KQ2M6IERhdmlkIEhvd2VsbHMgPGRob3dlbGxzQHJlZGhhdC5jb20+CkNjOiBDaHJpcyBNYXNv
biA8Y2xtQGZiLmNvbT4KQ2M6IEpvc2VmIEJhY2lrIDxqb3NlZkB0b3hpY3BhbmRhLmNvbT4KQ2M6
IERhdmlkIFN0ZXJiYSA8ZHN0ZXJiYUBzdXNlLmNvbT4KQ2M6IEplZmYgTGF5dG9uIDxqbGF5dG9u
QGtlcm5lbC5vcmc+CkNjOiBTYWdlIFdlaWwgPHNhZ2VAcmVkaGF0LmNvbT4KQ2M6IElseWEgRHJ5
b21vdiA8aWRyeW9tb3ZAZ21haWwuY29tPgpDYzogU3RldmUgRnJlbmNoIDxzZnJlbmNoQHNhbWJh
Lm9yZz4KQ2M6IFR5bGVyIEhpY2tzIDx0eWhpY2tzQGNhbm9uaWNhbC5jb20+CkNjOiBKYW4gS2Fy
YSA8amFja0BzdXNlLmNvbT4KQ2M6IFRoZW9kb3JlIFRzJ28gPHR5dHNvQG1pdC5lZHU+CkNjOiBB
bmRyZWFzIERpbGdlciA8YWRpbGdlci5rZXJuZWxAZGlsZ2VyLmNhPgpDYzogSmFlZ2V1ayBLaW0g
PGphZWdldWtAa2VybmVsLm9yZz4KQ2M6IENoYW8gWXUgPHl1Y2hhbzBAaHVhd2VpLmNvbT4KQ2M6
IEJvYiBQZXRlcnNvbiA8cnBldGVyc29AcmVkaGF0LmNvbT4KQ2M6IEFuZHJlYXMgR3J1ZW5iYWNo
ZXIgPGFncnVlbmJhQHJlZGhhdC5jb20+CkNjOiBEYXZpZCBXb29kaG91c2UgPGR3bXcyQGluZnJh
ZGVhZC5vcmc+CkNjOiBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0PgpDYzogRGF2
ZSBLbGVpa2FtcCA8c2hhZ2d5QGtlcm5lbC5vcmc+CkNjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdy
ZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpDYzogVGVqdW4gSGVvIDx0akBrZXJuZWwub3JnPgpD
YzogVHJvbmQgTXlrbGVidXN0IDx0cm9uZC5teWtsZWJ1c3RAaGFtbWVyc3BhY2UuY29tPgpDYzog
QW5uYSBTY2h1bWFrZXIgPGFubmEuc2NodW1ha2VyQG5ldGFwcC5jb20+CkNjOiBNYXJrIEZhc2hl
aCA8bWFya0BmYXNoZWguY29tPgpDYzogSm9lbCBCZWNrZXIgPGpsYmVjQGV2aWxwbGFuLm9yZz4K
Q2M6IEpvc2VwaCBRaSA8am9zZXBoLnFpQGxpbnV4LmFsaWJhYmEuY29tPgpDYzogTWlrZSBNYXJz
aGFsbCA8aHViY2FwQG9tbmlib25kLmNvbT4KQ2M6IE1hcnRpbiBCcmFuZGVuYnVyZyA8bWFydGlu
QG9tbmlib25kLmNvbT4KQ2M6IEFsZXhhbmRlciBWaXJvIDx2aXJvQHplbml2LmxpbnV4Lm9yZy51
az4KQ2M6IFBoaWxsaXAgTG91Z2hlciA8cGhpbGxpcEBzcXVhc2hmcy5vcmcudWs+CkNjOiBEYXJy
aWNrIEouIFdvbmcgPGRhcnJpY2sud29uZ0BvcmFjbGUuY29tPgpDYzogbGludXgteGZzQHZnZXIu
a2VybmVsLm9yZwpDYzogSHVnaCBEaWNraW5zIDxodWdoZEBnb29nbGUuY29tPgpDYzogRGF2aWQg
Uy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PgpDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBs
aW51eC1mb3VuZGF0aW9uLm9yZz4KQ2M6IE1hdGhpZXUgTWFsYXRlcnJlIDxtYWxhdEBkZWJpYW4u
b3JnPgpDYzogRXJuZXN0byBBLiBGZXJuw6FuZGV6IDxlcm5lc3RvLm1uZC5mZXJuYW5kZXpAZ21h
aWwuY29tPgpDYzogVnlhY2hlc2xhdiBEdWJleWtvIDxzbGF2YUBkdWJleWtvLmNvbT4KQ2M6IHY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApDYzogbGludXgtYWZzQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LWJ0cmZzQHZnZXIua2VybmVsLm9yZwpDYzogY2VwaC1kZXZl
bEB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWNpZnNAdmdlci5rZXJuZWwub3JnCkNjOiBzYW1i
YS10ZWNobmljYWxAbGlzdHMuc2FtYmEub3JnCkNjOiBlY3J5cHRmc0B2Z2VyLmtlcm5lbC5vcmcK
Q2M6IGxpbnV4LWV4dDRAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1mMmZzLWRldmVsQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApDYzogbGludXgtZnNkZXZlbEB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGNs
dXN0ZXItZGV2ZWxAcmVkaGF0LmNvbQpDYzogbGludXgtbXRkQGxpc3RzLmluZnJhZGVhZC5vcmcK
Q2M6IGpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApDYzogbGludXgtbmZzQHZn
ZXIua2VybmVsLm9yZwpDYzogb2NmczItZGV2ZWxAb3NzLm9yYWNsZS5jb20KQ2M6IGRldmVsQGxp
c3RzLm9yYW5nZWZzLm9yZwpDYzogcmVpc2VyZnMtZGV2ZWxAdmdlci5rZXJuZWwub3JnCkNjOiBs
aW51eC1tbUBrdmFjay5vcmcKQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXNl
Y3VyaXR5LW1vZHVsZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcg
IyA0LjQsIDQuOSwgNC4xNCAmIDQuMTkKLS0tCnYxMyAtIHJlYmFzZSB0byB1c2UgX192ZnNfZ2V0
eGF0dHIgZmxhZ3Mgb3B0aW9uLgoKdjEyIC0gQWRkZWQgYmFjayB0byBwYXRjaCBzZXJpZXMgYXMg
Z2V0IHhhdHRyIHdpdGggZmxhZyBvcHRpb24uCgp2MTEgLSBTcXVhc2hlZCBvdXQgb2YgcGF0Y2gg
c2VyaWVzIGFuZCByZXBsYWNlZCB3aXRoIHBlci10aHJlYWQgZmxhZwogICAgICBzb2x1dGlvbi4K
CnYxMCAtIEFkZGVkIHRvIHBhdGNoIHNlcmllcyBhcyBfX2dldCB4YXR0ciBtZXRob2QuCi0tLQog
ZnMvb3ZlcmxheWZzL2lub2RlLmMgICAgIHwgNSArKystLQogZnMvb3ZlcmxheWZzL292ZXJsYXlm
cy5oIHwgMiArLQogZnMvb3ZlcmxheWZzL3N1cGVyLmMgICAgIHwgNCArKy0tCiAzIGZpbGVzIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9v
dmVybGF5ZnMvaW5vZGUuYyBiL2ZzL292ZXJsYXlmcy9pbm9kZS5jCmluZGV4IDc2NjNhZWI4NWZh
My4uMWJmMTFhZTQ0MzEzIDEwMDY0NAotLS0gYS9mcy9vdmVybGF5ZnMvaW5vZGUuYworKysgYi9m
cy9vdmVybGF5ZnMvaW5vZGUuYwpAQCAtMzYzLDcgKzM2Myw3IEBAIGludCBvdmxfeGF0dHJfc2V0
KHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgc3RydWN0IGlub2RlICppbm9kZSwgY29uc3QgY2hhciAq
bmFtZSwKIH0KIAogaW50IG92bF94YXR0cl9nZXQoc3RydWN0IGRlbnRyeSAqZGVudHJ5LCBzdHJ1
Y3QgaW5vZGUgKmlub2RlLCBjb25zdCBjaGFyICpuYW1lLAotCQkgIHZvaWQgKnZhbHVlLCBzaXpl
X3Qgc2l6ZSkKKwkJICB2b2lkICp2YWx1ZSwgc2l6ZV90IHNpemUsIGludCBmbGFncykKIHsKIAlz
c2l6ZV90IHJlczsKIAljb25zdCBzdHJ1Y3QgY3JlZCAqb2xkX2NyZWQ7CkBAIC0zNzEsNyArMzcx
LDggQEAgaW50IG92bF94YXR0cl9nZXQoc3RydWN0IGRlbnRyeSAqZGVudHJ5LCBzdHJ1Y3QgaW5v
ZGUgKmlub2RlLCBjb25zdCBjaGFyICpuYW1lLAogCQlvdmxfaV9kZW50cnlfdXBwZXIoaW5vZGUp
ID86IG92bF9kZW50cnlfbG93ZXIoZGVudHJ5KTsKIAogCW9sZF9jcmVkID0gb3ZsX292ZXJyaWRl
X2NyZWRzKGRlbnRyeS0+ZF9zYik7Ci0JcmVzID0gdmZzX2dldHhhdHRyKHJlYWxkZW50cnksIG5h
bWUsIHZhbHVlLCBzaXplKTsKKwlyZXMgPSBfX3Zmc19nZXR4YXR0cihyZWFsZGVudHJ5LCBkX2lu
b2RlKHJlYWxkZW50cnkpLCBuYW1lLAorCQkJICAgICB2YWx1ZSwgc2l6ZSwgZmxhZ3MpOwogCXJl
dmVydF9jcmVkcyhvbGRfY3JlZCk7CiAJcmV0dXJuIHJlczsKIH0KZGlmZiAtLWdpdCBhL2ZzL292
ZXJsYXlmcy9vdmVybGF5ZnMuaCBiL2ZzL292ZXJsYXlmcy9vdmVybGF5ZnMuaAppbmRleCA2OTM0
YmNmMDMwZjAuLmFiM2QwMzFjNDIyYiAxMDA2NDQKLS0tIGEvZnMvb3ZlcmxheWZzL292ZXJsYXlm
cy5oCisrKyBiL2ZzL292ZXJsYXlmcy9vdmVybGF5ZnMuaApAQCAtMzU2LDcgKzM1Niw3IEBAIGlu
dCBvdmxfcGVybWlzc2lvbihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBpbnQgbWFzayk7CiBpbnQgb3Zs
X3hhdHRyX3NldChzdHJ1Y3QgZGVudHJ5ICpkZW50cnksIHN0cnVjdCBpbm9kZSAqaW5vZGUsIGNv
bnN0IGNoYXIgKm5hbWUsCiAJCSAgY29uc3Qgdm9pZCAqdmFsdWUsIHNpemVfdCBzaXplLCBpbnQg
ZmxhZ3MpOwogaW50IG92bF94YXR0cl9nZXQoc3RydWN0IGRlbnRyeSAqZGVudHJ5LCBzdHJ1Y3Qg
aW5vZGUgKmlub2RlLCBjb25zdCBjaGFyICpuYW1lLAotCQkgIHZvaWQgKnZhbHVlLCBzaXplX3Qg
c2l6ZSk7CisJCSAgdm9pZCAqdmFsdWUsIHNpemVfdCBzaXplLCBpbnQgZmxhZ3MpOwogc3NpemVf
dCBvdmxfbGlzdHhhdHRyKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgY2hhciAqbGlzdCwgc2l6ZV90
IHNpemUpOwogc3RydWN0IHBvc2l4X2FjbCAqb3ZsX2dldF9hY2woc3RydWN0IGlub2RlICppbm9k
ZSwgaW50IHR5cGUpOwogaW50IG92bF91cGRhdGVfdGltZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBz
dHJ1Y3QgdGltZXNwZWM2NCAqdHMsIGludCBmbGFncyk7CmRpZmYgLS1naXQgYS9mcy9vdmVybGF5
ZnMvc3VwZXIuYyBiL2ZzL292ZXJsYXlmcy9zdXBlci5jCmluZGV4IGE3YjIxZjJlYTJkZC4uNmYw
NDFlMWZjZWRhIDEwMDY0NAotLS0gYS9mcy9vdmVybGF5ZnMvc3VwZXIuYworKysgYi9mcy9vdmVy
bGF5ZnMvc3VwZXIuYwpAQCAtODU2LDcgKzg1Niw3IEBAIG92bF9wb3NpeF9hY2xfeGF0dHJfZ2V0
KGNvbnN0IHN0cnVjdCB4YXR0cl9oYW5kbGVyICpoYW5kbGVyLAogCQkJc3RydWN0IGRlbnRyeSAq
ZGVudHJ5LCBzdHJ1Y3QgaW5vZGUgKmlub2RlLAogCQkJY29uc3QgY2hhciAqbmFtZSwgdm9pZCAq
YnVmZmVyLCBzaXplX3Qgc2l6ZSwgaW50IGZsYWdzKQogewotCXJldHVybiBvdmxfeGF0dHJfZ2V0
KGRlbnRyeSwgaW5vZGUsIGhhbmRsZXItPm5hbWUsIGJ1ZmZlciwgc2l6ZSk7CisJcmV0dXJuIG92
bF94YXR0cl9nZXQoZGVudHJ5LCBpbm9kZSwgaGFuZGxlci0+bmFtZSwgYnVmZmVyLCBzaXplLCBm
bGFncyk7CiB9CiAKIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQKQEAgLTkzOCw3ICs5MzgsNyBA
QCBzdGF0aWMgaW50IG92bF9vdGhlcl94YXR0cl9nZXQoY29uc3Qgc3RydWN0IHhhdHRyX2hhbmRs
ZXIgKmhhbmRsZXIsCiAJCQkgICAgICAgY29uc3QgY2hhciAqbmFtZSwgdm9pZCAqYnVmZmVyLCBz
aXplX3Qgc2l6ZSwKIAkJCSAgICAgICBpbnQgZmxhZ3MpCiB7Ci0JcmV0dXJuIG92bF94YXR0cl9n
ZXQoZGVudHJ5LCBpbm9kZSwgbmFtZSwgYnVmZmVyLCBzaXplKTsKKwlyZXR1cm4gb3ZsX3hhdHRy
X2dldChkZW50cnksIGlub2RlLCBuYW1lLCBidWZmZXIsIHNpemUsIGZsYWdzKTsKIH0KIAogc3Rh
dGljIGludCBvdmxfb3RoZXJfeGF0dHJfc2V0KGNvbnN0IHN0cnVjdCB4YXR0cl9oYW5kbGVyICpo
YW5kbGVyLAotLSAKMi4yMi4wLjc3MC5nMGYyYzRhMzdmZC1nb29nCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNz
aW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW10ZC8K
