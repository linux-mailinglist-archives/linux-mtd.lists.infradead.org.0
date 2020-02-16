Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293CD1606DF
	for <lists+linux-mtd@lfdr.de>; Sun, 16 Feb 2020 23:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VdwBzY/S78CZUQTewTzMiVNdLwBbERaQ7lvNF2UOUao=; b=ieg
	nbDdcjNO8d5RcFRyQQSF+D+06P2ZyAhrWrWyRa+Yf698tmYBUY2c4DYBJ+mrVKmm+uSkwAh2Xinox
	tVaGDLcAWXrJcvb4bustxwLpdHbtVixT9NnK2QmxUw+q/y5QDgWB6OjTxZzd9fwEaKLJm/30LPAkW
	dGD8cNtiZko1fpgpMzsZVK8JA1mVifGxzF220PWjp9N3Q+w8SSSJbqpLBQWGKAnA6sHDdKDnjn5Vj
	rsUZbWYtzoob4UtDgK9jBk8ZIVJqxpzBIsNlCk1hLoaKySgk7TCs9kLAFe+/VQpE4oKRnXzKNv1gn
	lO/g/U+d4Yf+JfhOgGJOWGpAFgDF08A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3S4v-0006nn-Im; Sun, 16 Feb 2020 22:07:53 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3S4o-0006nH-AV
 for linux-mtd@lists.infradead.org; Sun, 16 Feb 2020 22:07:47 +0000
Received: by mail-io1-xd29.google.com with SMTP id n21so4227848ioo.10
 for <linux-mtd@lists.infradead.org>; Sun, 16 Feb 2020 14:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=09s6w7LqP4z4Vr4sU9E8MP8StYfD7uZ9CWf43nvqIlg=;
 b=gUncG+uzs3XvWrGmmEdhTsX8DJ07R2B/coUdahcgnS5pkoCoQf2T4/QiS9xkwtzJRE
 P/MzdIgZ5rV/yv5fnNtoq8fdv/lHqg72fmcA1y8xLYEaB8vwtKZ2rCNYX7NMnSCwm6qp
 jzZWU4E4UKNh6gvSuTWkDsIR1y00nVCerGHsbmu/2Zj1wmZwss3YIicjFqqSi/G56z2R
 9TJwrFbVak1thXotSLe37DJ+eY6z1cffpReG6rYI9HZP1bQZbL594K164wdUQrYB9w0G
 uAGK/bCoVwxI5tqUeOa+lEEGov9+VXTBJUJN1mZRsfV7E5i/wjbf7TuLNm2ctVAWvWXX
 rqQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=09s6w7LqP4z4Vr4sU9E8MP8StYfD7uZ9CWf43nvqIlg=;
 b=I9/ljKUn/Uxd6DTK7yvPVo6iUZANlBvZSCbeuE2hH2ubOmYm5Y7FiYTD3u87ea6139
 KA69S+6UVFggIqYmoGH+wxLmU0zNWx2dlapfWIlgyyhg6e+9xfiNsuXXUvY8cyPybFEx
 qmxI25yWWYWCmtvSqiBA2+FHTf+FE0w1cbMYrmrX1bf99GHmPJayI4PkGP6hM/eGq4FL
 /3tGTOqUtAeInNqb09tfEBZNXGFBfKRgs4aQlhM/cY5isyY4VpWi6nE2kdWUHnoMBzU3
 W8bfmt3gC2Uvtw2gsXkBSrTiTflaYLxF9rU0uVnaV6Ulqn4nlln/4C6Ds/2QU2ZBspot
 OV2Q==
X-Gm-Message-State: APjAAAUyCFxAgyEMeeqAznufBju+fnaWTrfqP6t6K/sZaTY4vpU0MEaa
 u3x6/VYufesgxCAOgjRSV5SEqSFVVFDMNNv8GUx59eIG
X-Google-Smtp-Source: APXvYqyvjN6oAXQVbhXKfcBK5v1maWRIo1PXwS0ud/v09nGOW94HGnaWpNOK6rwQPCGdb5v7wLgMoc87Vi0F0WfVznA=
X-Received: by 2002:a02:6055:: with SMTP id d21mr10738614jaf.21.1581890861407; 
 Sun, 16 Feb 2020 14:07:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sun, 16 Feb 2020 14:07:41
 -0800 (PST)
From: JH <jupiter.hce@gmail.com>
Date: Mon, 17 Feb 2020 09:07:41 +1100
Message-ID: <CAA=hcWSjWZDRcNFj3e4fdaV_u5AVNiksgykcDhqbHXm_aqT5wQ@mail.gmail.com>
Subject: Cannot mount UBIFS volume rootfs to RO
To: linux-mtd <linux-mtd@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_140746_386356_12CACCF2 
X-CRM114-Status: UNSURE (   3.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

I passed the root=ubi0:rootfs-volume ro ubi.mtd=2,2048 noinitrd
rootfstype=ubifs mem=256M rootwait=1 to kernel command line, but the
rootfs was still mounted as rw, can UBIFS volume rootfs support ro? Or
what could be missing here?

root# mount
ubi0:rootfs-volume on / type ubifs (rw,relatime,assert=read-only,ubi=0,vol=2)

Thank you.

Kind regards,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
