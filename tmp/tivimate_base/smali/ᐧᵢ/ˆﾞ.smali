.class public abstract Lᐧᵢ/ˆﾞ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lᐧᵢ/ﹳٴ;

.field public static final ⁱˊ:Lᐧᵢ/ﹳٴ;

.field public static final ﹳٴ:Lˋˋ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "RoboVM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-nez v1, :cond_2

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object v4, Lᐧᵢ/ˆﾞ;->ﹳٴ:Lˋˋ/ﾞᴵ;

    new-instance v0, Lᐧᵢ/ˈʿ;

    invoke-direct {v0, v3}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ˆﾞ;->ⁱˊ:Lᐧᵢ/ﹳٴ;

    new-instance v0, Lᐧᵢ/ʽ;

    invoke-direct {v0, v2}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ˆﾞ;->ʽ:Lᐧᵢ/ﹳٴ;

    return-void

    :cond_0
    new-instance v0, Lˋˋ/ﾞᴵ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˋˋ/ﾞᴵ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ˆﾞ;->ﹳٴ:Lˋˋ/ﾞᴵ;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, Lᐧᵢ/ᵔٴ;

    invoke-direct {v0, v3}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ˆﾞ;->ⁱˊ:Lᐧᵢ/ﹳٴ;

    new-instance v0, Lᐧᵢ/ʽ;

    invoke-direct {v0, v2}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ˆﾞ;->ʽ:Lᐧᵢ/ﹳٴ;

    return-void

    :cond_1
    new-instance v0, Lᐧᵢ/ﹳٴ;

    invoke-direct {v0, v3}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ˆﾞ;->ⁱˊ:Lᐧᵢ/ﹳٴ;

    new-instance v0, Lᐧᵢ/ﹳٴ;

    invoke-direct {v0, v2}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ˆﾞ;->ʽ:Lᐧᵢ/ﹳٴ;

    return-void

    :cond_2
    sput-object v4, Lᐧᵢ/ˆﾞ;->ﹳٴ:Lˋˋ/ﾞᴵ;

    new-instance v0, Lᐧᵢ/ﹳٴ;

    invoke-direct {v0, v3}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ˆﾞ;->ⁱˊ:Lᐧᵢ/ﹳٴ;

    new-instance v0, Lᐧᵢ/ﹳٴ;

    invoke-direct {v0, v2}, Lᐧᵢ/ﹳٴ;-><init>(I)V

    sput-object v0, Lᐧᵢ/ˆﾞ;->ʽ:Lᐧᵢ/ﹳٴ;

    return-void
.end method
