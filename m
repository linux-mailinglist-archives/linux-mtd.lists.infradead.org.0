Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAC9151A8B
	for <lists+linux-mtd@lfdr.de>; Tue,  4 Feb 2020 13:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Tv2FcJpOxbhwF5rdsprPeRhZfmW6BQdnVXZF2m/u0I8=; b=FqB
	1RNI2FLxRzs/3J9wHlL4hwuky6yg/icADFKhXU1o5zcLh9SoWIV+IO6RuWsLoe6nEmHnfvBr5Q0Bn
	ymANuXNF8KlGfRKgAyNBq4uyNnpYpd3+bBztbWVJQ6FwIcwYQlMyley3zNc0gOF+rqKVKnSMRZSW+
	fAmY8dddwUgMNB8RULV+p+mqwS9IVxMwi0z1x2KxKkYcFHoGmjRO/Zqh5wfkI/SJQcUnf5xUjQrV3
	9JKINrYi4vV4h9X6jbFRxjXbpzr3w7hDlAm+iuR1eh9NEsxi0INtxB/VmKKZoLfJD8f4+psYYn8qi
	c5sKE+392px0T1nEOuEZSIyVzsRjD4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyxNd-0004jX-DZ; Tue, 04 Feb 2020 12:32:37 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyxNN-0004gq-VK
 for linux-mtd@lists.infradead.org; Tue, 04 Feb 2020 12:32:23 +0000
Received: by mail-io1-xd36.google.com with SMTP id m25so20668945ioo.8
 for <linux-mtd@lists.infradead.org>; Tue, 04 Feb 2020 04:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=X91deIeSoVmqVFhUDw4pT/hEfigxv+G5+WqFCGEiR+I=;
 b=nwowaYh1H7qYv+Y6ffuDkjBebps3yM8uAWESPUr6L+JRXSINSHI+sop9tOUq1dzjhn
 yc+1E70PeySLFme4CG2rB9W40fy6jpK9o3qJ9l8meaADw80X7mvGS8M0UOEkamQmmYy1
 so3ZTiZs6zwul7OW4sX2M1rg/sazTQ+qT3LNvQUbL+rbkbbx5mmqGcXMnd6cn/9ERma3
 0dvlTvsgMNu7zBQERHlnRmx+L79/PalEPV6lLA8ineSTYubLt+Q8ZXD+iO4EiIdi45Pv
 hFYTGzIh+CJgUAWp9OVp9mxMclmdpPwVkhQkam8DpcXYXSrUlnZDrc7MxENJQf3GtbFm
 /48Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=X91deIeSoVmqVFhUDw4pT/hEfigxv+G5+WqFCGEiR+I=;
 b=UzBZpLXrO0nh0rKb2wkJ0zSKsz167qvfXxlHAjxxvRuPksp4v5G7VB67dbGqAaW6id
 Y11MZPj+gjmMtgIdJOk56nGPSCwg6JynVrk7zzDWjhhXNx+ACzMpewm9PQeUdbTC9Z//
 9mDTY2L3bWAVyeFRK0CyOF9EvIAj2WmXwG4vrK4t45tq6UUEWUbIiMo/g7lZWSJ6DWW5
 gQUG0TexwhLMuAQkR23tbWRRhUVBazmk7qGGlgYdOFZB+nByx/ViSDR24Etvwpw1Fhmc
 wRZUnviZ5KxuV62jXvnsmODUHFtNJmNTseK6UhpQE6XrmPsik2mC8QcO4B8zKSdct8/S
 HtNg==
X-Gm-Message-State: APjAAAVhvjkVJ7/ApChH+8J1JwQnUNeZLKN+jOK2IwfeO10hk2ABMeZM
 8r8+FYG+YWYtecmv/QQng/ilyXS9/WA/o26IOhc+E7ZyhUg=
X-Google-Smtp-Source: APXvYqyHmL5pWNURKXf1VNHszLxNL+DtfAnACYVuRNJD5/Bl+cNI1anmLYo91SxGq5s1Ko8YEbS80B20XojacAj5+MM=
X-Received: by 2002:a02:ac0e:: with SMTP id a14mr24015397jao.117.1580819540650; 
 Tue, 04 Feb 2020 04:32:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP;
 Tue, 4 Feb 2020 04:32:20 -0800 (PST)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 4 Feb 2020 23:32:20 +1100
Message-ID: <CAA=hcWTvGf9_izDMJhER-S=vEYcc22K4Syp5CuVjUr9tND7cgQ@mail.gmail.com>
Subject: mtd_nandbiterrs errors
To: linux-mtd <linux-mtd@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_043222_012623_11B0E31D 
X-CRM114-Status: UNSURE (   4.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d36 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

I am running kernel version 4.19.75 on iMX6, here I got problem to run
mtd_nandbiterrs:

# modprobe mtd_nandbiterrs
[  695.090585]
[  695.092143] ==================================================
[  695.098317] mtd_nandbiterrs: MTD device: 0
[  695.114256] mtd_nandbiterrs: MTD device size 1048576, eraseblock=131072, pag4
[  695.122867] mtd_nandbiterrs: Device uses 1 subpages of 2048 bytes
[  695.129138] mtd_nandbiterrs: Using page=0, offset=0, eraseblock=0
[  695.144888] mtd_nandbiterrs: incremental biterrors test
[  695.150594] mtd_nandbiterrs: write_page
[  695.158629] mtd_nandbiterrs: rewrite page
[  695.163488] mtd_nandbiterrs: read_page
[  695.170790] mtd_nandbiterrs: verify_page
[  695.174887] mtd_nandbiterrs: Successfully corrected 0 bit errors per subpage
[  695.182279] mtd_nandbiterrs: Inserted biterror @ 0/5
[  695.187387] mtd_nandbiterrs: rewrite page
[  695.196243] mtd_nandbiterrs: read_page
[  695.202608] mtd_nandbiterrs: Read reported 1 corrected bit errors
[  695.209115] mtd_nandbiterrs: verify_page
[  695.213192] mtd_nandbiterrs: Successfully corrected 1 bit errors per subpage
[  695.220361] mtd_nandbiterrs: Inserted biterror @ 0/2
[  695.225361] mtd_nandbiterrs: rewrite page
[  695.235261] mtd_nandbiterrs: read_page
[  695.240237] mtd_nandbiterrs: Read reported 2 corrected bit errors
[  695.246384] mtd_nandbiterrs: verify_page
[  695.250771] mtd_nandbiterrs: Successfully corrected 2 bit errors per subpage
[  695.257984] mtd_nandbiterrs: Inserted biterror @ 0/0
[  695.262984] mtd_nandbiterrs: rewrite page
[  695.273646] mtd_nandbiterrs: read_page
[  695.280000] mtd_nandbiterrs: Read reported 2 corrected bit errors
[  695.286230] mtd_nandbiterrs: verify_page
[  695.290489] mtd_nandbiterrs: Error: page offset 0, expected 25, got 00
[  695.297155] mtd_nandbiterrs: Error: page offset 282, expected 29, got 28
[  695.303897] mtd_nandbiterrs: Error: page offset 359, expected a7, got 27
[  695.310834] mtd_nandbiterrs: ECC failure, read data is incorrect despite reas
modprobe: ERROR: could not insert 'mtd_nandbiterrs': Input/output error

What I got wrong here?

Thank you.

Kind regards,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
