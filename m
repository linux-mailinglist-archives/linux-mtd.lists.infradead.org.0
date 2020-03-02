	by mail.lfdr.de (Postfix) with ESMTPS id 8A3211765AC
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Mar 2020 22:13:42 +0100 (CET)
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	List-Owner; bh=/K6Pjf8bwlMcB0q5Ez8hNsmE5loIn7Rb+C7vd8pdsXU=; b=efpjMFUx6v8afC
	s20yaen/z783SmO45zp2MKb81mWu1cpNJgbJe/mJhw/DGayYxvQEVdxs2R9XJDyxJQWGT9Q+fl/1g
	1pCfNf3g2CPaPuyuCBj5O4ezRrshs2hGnXla5KA70gJT0gWi3zL4zK+EFyzRgKq599cW58cGJczfr
	QClcOLrsmbfVYv+Q8/6SpIQtS7sQGTsQwHhyqvZ4Q6pOug57g3JNGFkuK5i7oZXFpVS5jPMvPjHMK
	0oSSmebHKS7r5xBwVvXQXX0d556Pw20L5xHkuftfyEgKjjBW81s69GfjseZPDWJn6LwMngo+NcNaJ
	EPAFedE4gt3mNqc6NDEA==;
	id 1j8sNX-0007E3-Oy; Mon, 02 Mar 2020 21:13:31 +0000
Received: from ms.lwn.net ([45.79.88.28])
 id 1j8sNP-0007DN-4f; Mon, 02 Mar 2020 21:13:24 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 96EE92E4;
 Mon,  2 Mar 2020 21:13:17 +0000 (UTC)
Date: Mon, 2 Mar 2020 14:13:16 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 00/44] Manually convert filesystem FS documents to ReST
Message-ID: <20200302141316.4269b22d@lwn.net>
In-Reply-To: <cover.1581955849.git.mchehab+huawei@kernel.org>
References: <cover.1581955849.git.mchehab+huawei@kernel.org>
Organization: LWN.net
X-CRM114-CacheID: sfid-20200302_131323_183716_8EF7F5AF 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
 Content analysis details:   (0.0 points)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Martin Brandenburg <martin@omnibond.com>, Jan Kara <jack@suse.cz>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Amir Goldstein <amir73il@gmail.com>, Bob Copeland <me@bobcopeland.com>,
 David Howells <dhowells@redhat.com>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 linux-mtd@lists.infradead.org, Tyler Hicks <code@tyhicks.com>,
 linux-afs@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 Naohiro Aota <naohiro.aota@wdc.com>, Christoph Hellwig <hch@infradead.org>,
 linux-nilfs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Sage Weil <sage@redhat.com>, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, Chris Mason <clm@fb.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>, cluster-devel@redhat.com,
 v9fs-developer@lists.sourceforge.net, Gao Xiang <xiang@kernel.org>,
 linux-ext4@vger.kernel.org, Salah Triki <salah.triki@gmail.com>,
 Alexey Dobriyan <adobriyan@gmail.com>, devel@lists.orangefs.org,
 ecryptfs@vger.kernel.org, Eric Van Hensbergen <ericvh@gmail.com>,
 Chao Yu <chao@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-fsdevel@vger.kernel.org, Joel Becker <jlbec@evilplan.org>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Damien Le Moal <damien.lemoal@wdc.com>,
 Luis de Bethencourt <luisbg@kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 linux-ntfs-dev@lists.sourceforge.net, Jeff Layton <jlayton@kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-btrfs@vger.kernel.org,
 Jan Kara <jack@suse.com>, Bob Peterson <rpeterso@redhat.com>,
 Phillip Lougher <phillip@squashfs.org.uk>, Johannes Thumshirn <jth@kernel.org>,
 linux-erofs@lists.ozlabs.org, linux-karma-devel@lists.sourceforge.net,
 ocfs2-devel@oss.oracle.com
On Mon, 17 Feb 2020 17:11:46 +0100
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:
> There are lots of plain text documents under Documentation/filesystems.
> 
> Manually convert several of those to ReST and add them to the index file.
OK, I've finally managed to add all the acks and wrestle this pile into
docs-next - thanks.
jon