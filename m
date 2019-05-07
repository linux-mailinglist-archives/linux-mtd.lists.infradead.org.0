Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D73015E6C
	for <lists+linux-mtd@lfdr.de>; Tue,  7 May 2019 09:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OcYbjVaa2jUKQ5mHhPyLtj1ZIlb20eK2pXIbV/NQeRg=; b=q3Q
	KbcYzoWk3RcYxBlpz9KS+y+3bavOOSaVY5NhjJqLEtSctJLOB/Vm1R3B8ExLN/iM6AWzCz/MX290c
	6VpRXtJAmKBZ2ZjFUf+ncz4xroernDMILHDxKtkx0PDLjdj8RJTxGVlCLBhgySUVRNFiMg5CCtXE1
	ATZlglK1JsDdwocRNDqFYPT+cLqSDYaZLQlfr6dmLm+qySsjtryM+9e+pC1NQQpCQmeM+WFhgrhj5
	kN6xqgCXLWP09QnRp90w1YYNL6XmLxWrnZGdp/IGiZiw9klp7jUK6awCqefweLXTbXD4Gd4I36eRE
	EyDiqSuCnrTFEJB/Ecev0f1cbmNJ8QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNukI-00038G-LV; Tue, 07 May 2019 07:42:38 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNukA-00037T-N5
 for linux-mtd@lists.infradead.org; Tue, 07 May 2019 07:42:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AA5B51A01B0;
 Tue,  7 May 2019 09:42:27 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C750B1A0233;
 Tue,  7 May 2019 09:42:24 +0200 (CEST)
Received: from nxp.com (lsv03080.swis.in-blr01.nxp.com [92.120.146.77])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 72B42402F2;
 Tue,  7 May 2019 15:42:21 +0800 (SGT)
From: Jagdish Gediya <jagdish.gediya@nxp.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] arm64: defconfig: Enable access to CFI-compliant memory
 mapped NOR flash
Date: Tue,  7 May 2019 13:12:16 +0530
Message-Id: <1557214936-2236-1-git-send-email-jagdish.gediya@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_004231_027563_8941C06C 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: boris.brezillon@free-electrons.com, prabhakar.kushwaha@nxp.com,
 Jagdish Gediya <jagdish.gediya@nxp.com>, leoyang.li@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Enable below configs in arm64 defconfig file,
CONFIG_MTD_CFI=y
CONFIG_MTD_CFI_INTELEXT=y
CONFIG_MTD_CFI_AMDSTD=y
CONFIG_MTD_CFI_STAA=y
CONFIG_MTD_PHYSMAP=y
CONFIG_MTD_PHYSMAP_OF=y

These configs are needed to access CFI compliant memory mapped
NOR flashes e.g. NOR flash connected over Freescale IFC.

Signed-off-by: Jagdish Gediya <jagdish.gediya@nxp.com>
---
 arch/arm64/configs/defconfig | 69 ++++++++++++++++++++++++--------------------
 1 file changed, 37 insertions(+), 32 deletions(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c8432e2..ac06501 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -45,15 +45,6 @@ CONFIG_ARCH_MESON=y
 CONFIG_ARCH_MVEBU=y
 CONFIG_ARCH_QCOM=y
 CONFIG_ARCH_RENESAS=y
-CONFIG_ARCH_R8A774A1=y
-CONFIG_ARCH_R8A774C0=y
-CONFIG_ARCH_R8A7795=y
-CONFIG_ARCH_R8A7796=y
-CONFIG_ARCH_R8A77965=y
-CONFIG_ARCH_R8A77970=y
-CONFIG_ARCH_R8A77980=y
-CONFIG_ARCH_R8A77990=y
-CONFIG_ARCH_R8A77995=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_ARCH_SEATTLE=y
 CONFIG_ARCH_STRATIX10=y
@@ -67,25 +58,6 @@ CONFIG_ARCH_VEXPRESS=y
 CONFIG_ARCH_XGENE=y
 CONFIG_ARCH_ZX=y
 CONFIG_ARCH_ZYNQMP=y
-CONFIG_PCI=y
-CONFIG_PCIEPORTBUS=y
-CONFIG_PCI_IOV=y
-CONFIG_HOTPLUG_PCI=y
-CONFIG_HOTPLUG_PCI_ACPI=y
-CONFIG_PCI_AARDVARK=y
-CONFIG_PCI_TEGRA=y
-CONFIG_PCIE_RCAR=y
-CONFIG_PCI_HOST_GENERIC=y
-CONFIG_PCI_XGENE=y
-CONFIG_PCI_HOST_THUNDER_PEM=y
-CONFIG_PCI_HOST_THUNDER_ECAM=y
-CONFIG_PCIE_ROCKCHIP_HOST=m
-CONFIG_PCI_LAYERSCAPE=y
-CONFIG_PCI_HISI=y
-CONFIG_PCIE_QCOM=y
-CONFIG_PCIE_ARMADA_8K=y
-CONFIG_PCIE_KIRIN=y
-CONFIG_PCIE_HISI_STB=y
 CONFIG_ARM64_VA_BITS_48=y
 CONFIG_SCHED_MC=y
 CONFIG_NUMA=y
@@ -193,6 +165,25 @@ CONFIG_MAC80211_LEDS=y
 CONFIG_RFKILL=m
 CONFIG_NET_9P=y
 CONFIG_NET_9P_VIRTIO=y
+CONFIG_PCI=y
+CONFIG_PCIEPORTBUS=y
+CONFIG_PCI_IOV=y
+CONFIG_HOTPLUG_PCI=y
+CONFIG_HOTPLUG_PCI_ACPI=y
+CONFIG_PCI_AARDVARK=y
+CONFIG_PCI_TEGRA=y
+CONFIG_PCIE_RCAR=y
+CONFIG_PCI_HOST_GENERIC=y
+CONFIG_PCI_XGENE=y
+CONFIG_PCI_HOST_THUNDER_PEM=y
+CONFIG_PCI_HOST_THUNDER_ECAM=y
+CONFIG_PCIE_ROCKCHIP_HOST=m
+CONFIG_PCI_LAYERSCAPE=y
+CONFIG_PCI_HISI=y
+CONFIG_PCIE_QCOM=y
+CONFIG_PCIE_ARMADA_8K=y
+CONFIG_PCIE_KIRIN=y
+CONFIG_PCIE_HISI_STB=y
 CONFIG_UEVENT_HELPER_PATH="/sbin/hotplug"
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
@@ -202,6 +193,12 @@ CONFIG_HISILICON_LPC=y
 CONFIG_SIMPLE_PM_BUS=y
 CONFIG_MTD=y
 CONFIG_MTD_BLOCK=y
+CONFIG_MTD_CFI=y
+CONFIG_MTD_CFI_INTELEXT=y
+CONFIG_MTD_CFI_AMDSTD=y
+CONFIG_MTD_CFI_STAA=y
+CONFIG_MTD_PHYSMAP=y
+CONFIG_MTD_PHYSMAP_OF=y
 CONFIG_MTD_M25P80=y
 CONFIG_MTD_NAND=y
 CONFIG_MTD_NAND_DENALI_DT=y
@@ -374,7 +371,6 @@ CONFIG_PINCTRL_QCS404=y
 CONFIG_PINCTRL_QDF2XXX=y
 CONFIG_PINCTRL_QCOM_SPMI_PMIC=y
 CONFIG_PINCTRL_SDM845=y
-CONFIG_PINCTRL_MTK_MOORE=y
 CONFIG_GPIO_DWAPB=y
 CONFIG_GPIO_MB86S7X=y
 CONFIG_GPIO_PL061=y
@@ -502,19 +498,19 @@ CONFIG_SOUND=y
 CONFIG_SND=y
 CONFIG_SND_SOC=y
 CONFIG_SND_BCM2835_SOC_I2S=m
+CONFIG_SND_MESON_AXG_SOUND_CARD=m
 CONFIG_SND_SOC_ROCKCHIP=m
 CONFIG_SND_SOC_ROCKCHIP_SPDIF=m
 CONFIG_SND_SOC_ROCKCHIP_RT5645=m
 CONFIG_SND_SOC_RK3399_GRU_SOUND=m
-CONFIG_SND_MESON_AXG_SOUND_CARD=m
 CONFIG_SND_SOC_SAMSUNG=y
 CONFIG_SND_SOC_RCAR=m
 CONFIG_SND_SOC_AK4613=m
-CONFIG_SND_SIMPLE_CARD=m
-CONFIG_SND_AUDIO_GRAPH_CARD=m
 CONFIG_SND_SOC_ES7134=m
 CONFIG_SND_SOC_ES7241=m
 CONFIG_SND_SOC_TAS571X=m
+CONFIG_SND_SIMPLE_CARD=m
+CONFIG_SND_AUDIO_GRAPH_CARD=m
 CONFIG_I2C_HID=m
 CONFIG_USB=y
 CONFIG_USB_OTG=y
@@ -656,6 +652,15 @@ CONFIG_QCOM_SMEM=y
 CONFIG_QCOM_SMD_RPM=y
 CONFIG_QCOM_SMP2P=y
 CONFIG_QCOM_SMSM=y
+CONFIG_ARCH_R8A774A1=y
+CONFIG_ARCH_R8A774C0=y
+CONFIG_ARCH_R8A7795=y
+CONFIG_ARCH_R8A7796=y
+CONFIG_ARCH_R8A77965=y
+CONFIG_ARCH_R8A77970=y
+CONFIG_ARCH_R8A77980=y
+CONFIG_ARCH_R8A77990=y
+CONFIG_ARCH_R8A77995=y
 CONFIG_ROCKCHIP_PM_DOMAINS=y
 CONFIG_ARCH_TEGRA_132_SOC=y
 CONFIG_ARCH_TEGRA_210_SOC=y
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
