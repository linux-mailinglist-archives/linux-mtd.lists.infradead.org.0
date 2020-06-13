Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D14F1F849D
	for <lists+linux-mtd@lfdr.de>; Sat, 13 Jun 2020 20:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iLVf/r3yc3MlvYP3XjrC8tIc38QeX7pr9Fw3sVg+79U=; b=VzXM9uR80l+t9b
	jVa9QRdHQce02exZiSNF09AxE7Ewwq0o/UESMZTZafrtKQVDRWWAR2WFQB9YYePBVarnVNqB0FejA
	gqIZ4/NQzPrk5vtGa/4PF633bYrIz/busona6BmrU/qbH7azg1H/1Gxn+uPX0f6gvjNBQJXpm9HHs
	3OA+HZW6SpXYyUpJbx7Rwe660m4I03iq51Gm1zCeg4H0sxkQy0qrW7eglWmw7uuOvkqpgqTaSbesX
	R4NdI4k68pyPRD8/gcLQH8hIsHcc32My/dJz+wF/vU9XnwLpjT2YPFF+v4yvTWV9muWLT2UjeuSst
	H6vPA71JHoeFHEJXx+HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkB2Y-0007qZ-KL; Sat, 13 Jun 2020 18:38:02 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkB2P-0007q8-FQ
 for linux-mtd@lists.infradead.org; Sat, 13 Jun 2020 18:37:54 +0000
Received: by mail-lf1-x12a.google.com with SMTP id d27so2680901lfq.5
 for <linux-mtd@lists.infradead.org>; Sat, 13 Jun 2020 11:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:organization:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=BmSBD7h3njitpLi5QsmTDnHJWiGkucDb02pMa3UrBRI=;
 b=D5iDPVYgmwGhaOr/Y/znPRPv2TpXLV42qx5RUn1NcoKYPcKfoUd32dXgvYfy7HpZtR
 CWaB5oSu91X5BT8+OyBx0ASylvZkf1iyeNEyybMEjpleXYYbgQAPxTyUFbTo4O0Lb71b
 NV5c9umDsLOX2+IgzvEbOcYBQHcKl6oHO6p0Xy55wPAA0S1Qu+y00FxMlmwCorviTut2
 SxHPOHX08qX0RIkgYTfPZiujKldY/BT4iybzMdfMWX8HXRumTn0tKtuckpGr3qgN3Bh5
 zjRRnSZMnVMyR9FYk1eBS548LdgE6ksGLupV/Nkd1Hx2dSz5UEc7y86MT0GvqLyFA3/c
 Xelg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:organization:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=BmSBD7h3njitpLi5QsmTDnHJWiGkucDb02pMa3UrBRI=;
 b=T5V/YYRVaIK/SCQBQEMJueyrRcrZmyjDzkbg7bdj/kO+QxX1jolt2V1/wuhHpfzBpN
 xAxbq4IqETh0YaIRnQuzbOLZedvA2M6HoilK6zBB1Gpx6DLyGYGW7CNxCa0ARU0+9bL7
 J2yh9Oxq3aTsEXO/RvkeLE0Qyh3btc8c9rnXTpYCD5ZppE77WfF79i6M4W0e4pu1OJnv
 NgX3DG7FjSH158OcHFcZuZBdjpId75Bq8hxtzZqYRFlQs+yMq8MxloHSkBNucZlCu/sF
 KS+PL7Ydb9akgL560hLxNwusKeUI7aIczhZPvsU3kxmOV6DbtVInGMVbzNk0hJOeZfhb
 Z5pw==
X-Gm-Message-State: AOAM5308WOJsF7j82dbqhY1Qm9dmuVPSUALfzhhbG0N3YOPSRz6b/e8B
 R+bQVu4T/QM5TVD7PPLf4XBN6g==
X-Google-Smtp-Source: ABdhPJwrV3vFpHEGmswCk7rvxEQ6MzcJH8kO3I0D3hgg8DwJsce6wYaVTijjPPpx61Zz6riIeJE6aQ==
X-Received: by 2002:a19:5216:: with SMTP id m22mr9870055lfb.14.1592073470253; 
 Sat, 13 Jun 2020 11:37:50 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:2e2:84d1:c335:1451:e577:e115])
 by smtp.gmail.com with ESMTPSA id o16sm3324961ljg.90.2020.06.13.11.37.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 13 Jun 2020 11:37:49 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH v3 0/2] Add Renesas RPC-IF support
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Organization: Cogent Embedded
Message-ID: <721e5306-6dc5-4a3a-2bbb-459be6261357@cogentembedded.com>
Date: Sat, 13 Jun 2020 21:37:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_113753_692928_1CB9812B 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>, linux-mtd@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Mason Yang <masonccyang@mxic.com.tw>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello!

Here's a set of 2 patches against Linus' repo. Renesas Reduced Pin Count
Interface (RPC-IF) allows a SPI flash or HyperFlash connected to the SoC
to be accessed via the external address space read mode or the manual mode.
The memory controller driver for RPC-IF registers either SPI or HyperFLash
subdevice, depending on the contents of the device tree subnode; it also
provides the abstract "back end" API that can be used by the "front end"
SPI/MTD drivers to talk to the real hardware...

Based on the original patch by Mason Yang <masonccyang@mxic.com.tw>.

[1/2] dt-bindings: memory: document Renesas RPC-IF bindings
[2/2] memory: add Renesas RPC-IF driver

MBR, Sergei

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
