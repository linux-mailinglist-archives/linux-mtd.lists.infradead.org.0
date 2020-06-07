Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629801F105B
	for <lists+linux-mtd@lfdr.de>; Mon,  8 Jun 2020 01:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h3UL3ITzL/Z+b74e77XxpUNQilHezVULkP+E/LN3HqY=; b=Yn+vc+jsAYuJgI
	tQ5hg5zLAm43eVDIJkxLcSBdlooLM3zpLh9ZjRoVFeu9DEhIJtQexPrx8AkWOMOf+FJXKXJSEun1t
	B4yGIBz57EnvU9Zb16MVyE2AIV8gW55nNlStUsI4khYE7J37yzdAYvpT/GsAY17N7xMQzPCUX5HML
	EieVcNWEIyTsCBbGud+FH+EhSRZK5oRGThfmN8H641eTfhIXzGAge+DqfhciuiNT1f3alY+vCczsV
	R98neafFlv6V2S65mt3dQAV9oqO4FFWDq76Diu0BukFQ9d6g29aB5QVmFYaGoSCHLOud0+MrQ+lla
	uM6V0cd8AIfdoJqR2ARg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji4Tn-0000tJ-Io; Sun, 07 Jun 2020 23:13:27 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji4Tf-0000sn-7B
 for linux-mtd@lists.infradead.org; Sun, 07 Jun 2020 23:13:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id z9so18151716ljh.13
 for <linux-mtd@lists.infradead.org>; Sun, 07 Jun 2020 16:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=g+VCAHAoWL4xJzVklduY/eoWtSGEo/mtgOVbK4Gi8+Nb3iUA9nZ3+HpURn1aAS4I2F
 HgncHRAVgNkCScp4JmCRZ6XFU3G8c02cMhEcPp8EuUs0z4IdxNy5RFTIg0wGresilJys
 7Xs/4oaf1EdtDeE5ucm3WjBQJQHs2UeKe8w+A0LolHIqhPQJFp3cRWeDIG5ojFI9U7/s
 CKPy7p3+P/XCcKSStb9PXWuZRqw2Svek1LcKl2GqwaUR0LIY/ijp8/kUOGqMKg4XgNq8
 B6+/e46ixcPOZfjXHofCu+B9C1dkgWMhimQy/2YJw/pzPLqgGL6KJ7eDVPAoGTDOH5Hg
 Hckw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=WoowxnylBHI3youdsx3bsaquHhRB9W7UfbNp7E6hpygELfhigDMYL31Y45rqqV+qx/
 9NA3U1SnSivhBmavRuLnsdOf1MNvnMF12M1jkyyHDJsAfsSopIFjgEs/h8+Zd6xbpIul
 Na4trE+6hf2+g1EF4PmoupGjxHGwKrIMBsVVhMsU8YbOZk7lQ/0/Ov8GpLlSHapOhuP4
 +e9aS2ZP8XriRP2+/RlKmF1IoFCGCFSlRFMm1dlMVXEHOiFQ205hznnzi57xc6i59y6R
 0bqLusTPP8PzHJIFdsC2sb2PbcHGBgS8WnHjQrnft9A01tgnHQeNt08D41IL2zZbqdf8
 kbow==
X-Gm-Message-State: AOAM531p/yLa+Bi732Upv90NpELmaMQKbf0kPR6qos8lPOG4H2Rh24Df
 MWbPJKXWanVLJOs8mXEoCKTaLqKN5fQ3KrW8/TfD7/Rn
X-Google-Smtp-Source: ABdhPJzme8PSx37VldFgrX2JPtlGM5JDMXscegPHbrAYCIXVYZupzKIgpKJ0syu70AFEmpjJ4bacfIi5FIWo3jRFXBs=
X-Received: by 2002:a2e:584e:: with SMTP id x14mr9045064ljd.380.1591571597674; 
 Sun, 07 Jun 2020 16:13:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6512:313b:0:0:0:0 with HTTP; Sun, 7 Jun 2020 16:13:17
 -0700 (PDT)
From: Sylvia Robinson <lorijrobinson589@gmail.com>
Date: Mon, 8 Jun 2020 00:13:17 +0100
Message-ID: <CAKXTXJw_ePTi_bgdz2qOC8B=A0q7nHjipsB0vbXcov95PFSeag@mail.gmail.com>
Subject: =?UTF-8?B?U2l6ZSBnw7ZuZGVyZGnEn2ltIG1lc2FqxLFtxLEgZ8O2cmTDvG4gbcO8Pw==?=
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_161319_257834_7C07C3D1 
X-CRM114-Status: UNSURE (   0.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lorijrobinson589[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [sylviajones046[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [lorijrobinson589[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: sylviajones046@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
