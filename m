Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A54D1687C9
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jul 2019 13:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S8fkxi+d6+jxierP5iv3FVpls7mV5bfwSZQ1HWs2K2A=; b=QJ1
	WrS5n6Ih1ONW8Y2pWzGMe0QAkJaAEp3oPGA2EonXRH0go8emMqENe9KAGXeZahl6uHfSOwRh9uaPC
	bjM8UwfJPeXwai7Iv6RyKviW70E3QtF2O8hf9hfpkcBz0/XLIAVIbi+M3OnY//Ma1yL1Nia3MxErf
	LWKx+vfjcUsjwcqcoCB/WKDJY1g3RypDJg0/j1qHgmWJe10DUWQQ0xE0dXj4dEJ2Fnezv7oJoUVEE
	oOdid4+dGF/wgNTWdxSpT5VwHLZMh/9ZcEXrb/FJorm4D5qePwzqHzjCe6/mb1zzb4K/ZELUEqXRm
	HWbOS+hsHr/aUkU8fqZqrjnOg7wwCpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmyme-0008GX-D7; Mon, 15 Jul 2019 11:04:40 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmymH-0008Ey-Ne
 for linux-mtd@lists.infradead.org; Mon, 15 Jul 2019 11:04:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so7540942pgj.7
 for <linux-mtd@lists.infradead.org>; Mon, 15 Jul 2019 04:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=at1U0zLzNGQlxAxn9clrRSHSPpGB2zlKGmciYViXmzQ=;
 b=Iux65787KeJtZlk/UWQ8a71sdq3L+JuOBHwZwxVHUOu0Hal0brUmaUtWDT+1EakAhq
 MtJF/vbEQagCDLqdjzXV0tE8x5YNwPsclB57z/jA+URpkAaidKGibNAiJ897B2Q2rv9p
 uYOBtZylJRmtRio8wDP4GwRiBknU84/FmWsMFw620mFEJwR9vSM1QlmEIUdghWeLiQPg
 3/o6A/ASY/U2XQTJeOVMsZoeyZcCfYvLw2Rbw2pE/fk67uX5NyEzWB6tv7TG5MeHZvc/
 X3yp2nduS0Os162TiWKhkMGOmC5wMIt1cVEoe4V7hwUEXyYLehvgYaVidvFk20QbqjFn
 kL9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=at1U0zLzNGQlxAxn9clrRSHSPpGB2zlKGmciYViXmzQ=;
 b=MW2mCd6gvaH9lIDCC2AwilFFOHyiRgAl8LoZMewude+janrT64+WUlc0t9kKwIhdMb
 DiJIL7p+Y4f0BLwYwT04MsXQMer9f/mSe5/YmNtXlKqfQfuAe4fB4bK7rVP9aRdAAHpS
 d+vQN0xf6WWUjTTk/3Cxxdp3TqUHq3eqCYMZkuJOTpO0Gnvboc3F6x0i31O36I4O8yKg
 8eJsO7C7SVZui+Z6/Z8jpfKveCn77zjKN1t/Dbio+/9AAORBl+1Rk8/slF6IXtYsblJ4
 7z3c8bnwFHjKsuB/A1vCXQMj9Gl3JR1cRLUzcy9pR6h0ZNjcEL0hg2nl1zb0WK1T9lNw
 AY8g==
X-Gm-Message-State: APjAAAViljzZaaKwdOVmp8fKpD+xI4c+y0n/tEx1ISK74/UENplKLnH2
 P4diqpgbttTL5iXu5aDrudg6HAKqpZbLnTI9y5E=
X-Google-Smtp-Source: APXvYqwI9SCHvCHLnvHckfwL+oW1shcNAvZVS/wk3iQ3LTmyEMELfYQBoBiEv/cUvggIHp2fQao9ul2L5mSBnKj2EDA=
X-Received: by 2002:a63:ad07:: with SMTP id g7mr24480194pgf.405.1563188657092; 
 Mon, 15 Jul 2019 04:04:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:b78d:0:0:0:0 with HTTP; Mon, 15 Jul 2019 04:04:16
 -0700 (PDT)
From: Donald Douglas <ddouglasng@gmail.com>
Date: Mon, 15 Jul 2019 04:04:16 -0700
Message-ID: <CALVR28EP4VMYZDqzau6uFTJmxHs6we+nYre3JstaZ5qSsvppFQ@mail.gmail.com>
Subject: Kindly Respond
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_040417_775020_7BC01A24 
X-CRM114-Status: UNSURE (  -0.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ddouglasng[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 HK_SCAM                No description available.
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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

Hello,
I am Barr Fredrick Mbogo a business consultant i have a lucrative
business to discuss with you from the Eastern part of Africa Uganda to
be precise aimed at agreed percentage upon your acceptance of my hand
in business and friendship. Kindly respond to me if you are interested
to partner with me for an update. Very important.

Yours Sincerely,
Donald Douglas,
For,
Barr Frederick Mbogo
Legal Consultant.
Reply to: barrfredmbogo@consultant.com

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
