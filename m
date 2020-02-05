Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB4115278B
	for <lists+linux-mtd@lfdr.de>; Wed,  5 Feb 2020 09:29:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WiMPbqN/Jp80sfelPu9m7+8wHrqLeH0p7fiQFPwKtnQ=; b=lbb8v57c9huvrS
	SsC2lN+urtf/dNxaCJbLI+xYNa4Nul6SQTxnznXsDya+i6wKSlceFq9ZEbS6lcsh3a08kbCMoYI5h
	CzRpcQTf+3NJInNx019Urm6v16C235rVMfJPOhGa0HyIeVLsNJGntcCG3AsdyBbEt4KQ7FHhBefVY
	IDuUWY5/NOkddXz4yu+UUUr97u8JUlv2t19aqDed5mmkrztxjCxX9twSU1v9WKY9QT/n1oykjjTkU
	5rKfILCJeUstlSkxSUbleXjrIlcFxu83nIjDqcc6oHGeUdiEHqM8IBh4kPmUkyBlwnNh0bW7S5G4X
	I9O8uMvGpX+Coz5AMGJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izG3V-0002py-VQ; Wed, 05 Feb 2020 08:29:05 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izG3O-0002pb-CK
 for linux-mtd@lists.infradead.org; Wed, 05 Feb 2020 08:28:59 +0000
Received: by mail-lf1-x143.google.com with SMTP id b15so848423lfc.4
 for <linux-mtd@lists.infradead.org>; Wed, 05 Feb 2020 00:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KHzpm2mS2q1zks9PiDnpuujQ8A3/Outo+3RVvOxUyR4=;
 b=QRHtICep2F0jwpZMUIgWbSiQx1T7LvAtHtYDAjcdwM/0FPPBohk8uNRvlZkmWelJWj
 BcuIlhVqP4D+JECQCu7LTT0wbn7B7hcJ6BcJ0zFnTcbWSsfRKBVJ+gtHW9dtaz1C+bdX
 TEmjIeOf2uDUepiZnZrvlTY8od79OY4LCJW63SZjA6b8snu8/pe51BcM9aPnkMBfcAxX
 zikBiqSQABklrTr4toF9j5wN+Bb7Ur1Ixa4G/xoxoQosyADg1ZJzivHChzEBPkUY9pPq
 3a81P5EzM9ODxC9J7HUcYagEQ0XiAx2Cc4J0vZEimsuunOCWKOyMgOmWvmAgGyv61TGd
 34Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=KHzpm2mS2q1zks9PiDnpuujQ8A3/Outo+3RVvOxUyR4=;
 b=dbt8msZ1/1sRvzVyLY2sZ8KyQvrTAXPKZT3EO/OPr3VH9nZgoRo45wtCoGr8NwXNTR
 7NZxLDCIPG74U2l2iqT/mgllsFVb4GTBP9WisT40ggnC2rT0xBrO2XfCJ1Dmi3veGrvV
 KqwDjpYAzDkiESxmJ57VKEGIAJxouzWUVNp+cTWkaraY11E6TLq0jodC8xQelEfVqEQ+
 uxb3kGN27GD+/5zQK3GJXStTlEnSYOv2J2kaQGo4cFmTIbhG1NOMuDwzLgRQtUQTnhSl
 1tSb7jf/wGV04lXBUzI7Rcy6o5SWdi5AZbCzVH+oX95sKxOgwKYFULQhyrXgq+s2rIGo
 y3zw==
X-Gm-Message-State: APjAAAVnjWa+ZrWVlrLuIsUYIqXlPR197i9+ADWwGM17QkiRFS7g1dV+
 Ch9ulE4qsNyRxHuW97TKFefDgGAkTK58QbfqdqA=
X-Google-Smtp-Source: APXvYqzqQYKnelRZ+7XNXXSAvMFD2B9xHVYw73NFKEcSJMlnEM+XO4RpBRy5xXCZn4GU+ql6W2RasWcnxNPNZ8K1dWs=
X-Received: by 2002:a19:f610:: with SMTP id x16mr17074360lfe.80.1580891332217; 
 Wed, 05 Feb 2020 00:28:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:7d09:0:0:0:0:0 with HTTP;
 Wed, 5 Feb 2020 00:28:51 -0800 (PST)
From: Jessica Meir <jesicameir1977@gmail.com>
Date: Wed, 5 Feb 2020 08:28:51 +0000
Message-ID: <CAJW=TMd+2-XW2=x0SkGVvLDuVqjTDw96DOo8v2XsuDTJ5Yz1sA@mail.gmail.com>
Subject: =?UTF-8?Q?Tere=2C_minu_nimi_on_Jessica=2C_kas_saite_mu_s=C3=B5numi?=
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_002858_443214_C6D329B8 
X-CRM114-Status: UNSURE (  -0.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jesicameir1977[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [jessica.u.m1977[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jesicameir1977[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Jessica.u.m1977@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGVyZSwgbWludSBuaW1pIG9uIEplc3NpY2EsIGthcyBzYWl0ZSBtdSBzw7VudW1pCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVRE
IGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbXRkLwo=
