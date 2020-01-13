Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36ABE138F12
	for <lists+linux-mtd@lfdr.de>; Mon, 13 Jan 2020 11:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:MIME-Version:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CNUaOqz5pFxBmices7plvvBiG2sefRoiJzX8j072Ch8=; b=JjR5FabjCpiR9p
	Mx0ix9Jh8SgorbDiAfCas/lXnE7MvgEkMN9lDNJ85FH/OxkFWnBd9sjuzPl4YvQoD1ybWEmoIaocJ
	o4n1peAOFAMp6qDrIiSXvg3uGpa5HiZI9c6DiY9T/dcI2MH8kmrOjg4W8ZjwM2suanPa3a1EzcxR+
	Wzuq4LQo3F9LKiMCT+9fglHYn+MU8iMZC7oczuYHjchzow0FcybLH4oEuCQPKTk9E8scliOki7Y4Q
	GSqP3bFL/6C6cwpQc1Lda9T9lGggIIogpjYpOphwYN+KfHHJfKvL1+jNx6h0+mffPSMCHoFVUo6ia
	3fva3b4gYW6ITm/AvYSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwz6-0001Oe-30; Mon, 13 Jan 2020 10:30:12 +0000
Received: from smtp.vivaldi.net ([82.221.130.149])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwyo-0001My-Q7
 for linux-mtd@lists.infradead.org; Mon, 13 Jan 2020 10:29:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by smtp.vivaldi.net (Postfix) with ESMTP id 52F8041876
 for <linux-mtd@lists.infradead.org>; Mon, 13 Jan 2020 10:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net 52F8041876
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
 t=1578911391; bh=+g/bF76sVGCO2ttMu03n8T+smXAWCpq/xANhF61Ywwc=;
 h=Date:From:To:Subject:From;
 b=1SN+YZ7ugmKtb0r9GF7c7kUkTPyO1QhiTn9mv0ABFcRKVTveQT7VoonlBIcJ3JXVg
 +ZFKT7iiQw+D+lh6hHUEkNu/+cUw4ymMDMgl9RBzfX3zYkrZpKplyeAam/70oHhWfi
 EoJPd51c/y7u+EbmP2VoGeddgvQyd17KuPuO9ijm4sRR2Url9+5CDSEMe7+i/FxEOS
 8TSrhppwmH/EJboDHQQP7tx0g0mD0vRA+R70pkLBdl2j2dhMf8Qz2SE/phktB7cqo/
 SlfZHsl3LWGCd+W8+xAdsARFrocbM2/g0rOZ7fiO0govQuF46y60tahYUzR1lZlLNq
 l1YAZfRPaBzaA==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
 by localhost (mxo-new.viv.ext [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id doJsFI4_Vdlh for <linux-mtd@lists.infradead.org>;
 Mon, 13 Jan 2020 10:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net EEC2741816
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
 t=1578911389; bh=+g/bF76sVGCO2ttMu03n8T+smXAWCpq/xANhF61Ywwc=;
 h=Date:From:To:Subject:From;
 b=p+fGYR5MPDi8v84YnJc+oOSBqQ5SZ0z5plTNZI/PQT+5ev52Jes2mPQVv5yt8v9bF
 y3YnU6/gw+qfJOy0ztKbG+5rSLsIqPlN6AxiPHBbxGSiga9+rJ4P3HGcNBgEcE79/w
 bx/1im5sPlbGVJbpwfgGlPXb+hORI8pxqDxVxz6ZPOWLqk3kb9eb2+gWnZ0Q+EmGyy
 foZfU7bphqvm2OBlovDCEewY5DscF0LH2j2HRD1dzWamBjmXGkT746D3PD7eJF/+6s
 z8M2ff/yN3Te3WLfWyO3fJcDI2UT3PZ2IqPkG2vYf220wzSoohJuJsf+le6ViflH3y
 Bxoc7GAkW5bZQ==
Date: Mon, 13 Jan 2020 15:59:48 +0530
From: jaymin.dabhi@vivaldi.net
To: linux-mtd@lists.infradead.org
Subject: UBIFS Image Reserved More Space
Message-ID: <1e833a8c647ea5fdcc8ca1a5f6532ceb@vivaldi.net>
X-Sender: jaymin.dabhi@vivaldi.net
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_022955_245931_22B2CDE9 
X-CRM114-Status: UNSURE (   2.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [82.221.130.149 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

There is a ubifs.img has been created with following commands and 
configurations:


mkfs.ubifs -r rfs_out_dir -m 2048 -e 126976 -c 2047 -F -o 
rfs_out_dir/ubifs.img

ubinize -o rfs_out_dir/ubifs -p 131072 -m 2048 -s 2048 
rfs_out_dir/ubicfg.ini


>> ubicfg.ini

[ubifs]
mode=ubi
image=ubifs.img
vol_id=0
vol_type=dynamic
vol_name=rootfs
vol_flags=autoresize


There is 1GB RAM on the board.

>> Output of top command:

Tasks:  43 total,   1 running,  42 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  1.0 sy,  0.0 ni, 98.7 id,  0.0 wa,  0.2 hi,  0.0 si,  
0.0 st
KiB Mem :   703572 total,   649392 free,    20528 used,    33652 
buff/cache
KiB Swap:        0 total,        0 free,        0 used.   671578 avail 
Mem

>> Output of free command:

# free -m
               total        used        free      shared  buff/cache   
available
Mem:            687          19         634           0          32      
    655
Swap:             0           0           0

>> Output of df command:

# df -h
Filesystem                Size      Used Available Use% Mounted on
ubi0:rootfs             107.9M     69.8M     38.1M  65% /
devtmpfs                343.5M         0    343.5M   0% /dev
tmpfs                   343.5M     68.0K    343.5M   0% /dev/shm
tmpfs                   343.5M    160.0K    343.4M   0% /run
tmpfs                   343.5M         0    343.5M   0% /sys/fs/cgroup
tmpfs                   343.5M     12.0K    343.5M   0% /tmp
tmpfs                   343.5M         0    343.5M   0% /webSvr/logs
tmpfs                   343.5M     16.0K    343.5M   0% /var/lib/pulse
tmpfs                   343.5M     24.0K    343.5M   0% /var/run
tmpfs                   343.5M         0    343.5M   0% /var/tmp
tmpfs                    68.7M         0     68.7M   0% /run/user/0


The above commands indicate that ~337MB has been reserved somewhere.

Is my UBIFS keeping it reserved?
How to know why this much memory has been reserved?

Also, how can I get more space in UBIFS?

Thanks in advance.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
