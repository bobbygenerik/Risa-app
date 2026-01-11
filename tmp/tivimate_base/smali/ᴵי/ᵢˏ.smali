.class public abstract Lᴵי/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lᴵי/ʽʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "kotlinx.coroutines.main.delay"

    sget v1, Lˊʽ/ˏי;->ﹳٴ:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lᴵי/ʼʼ;->ˉٴ:Lᴵי/ʼʼ;

    goto :goto_2

    :cond_1
    sget-object v0, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    sget-object v0, Lˊʽ/ᵔʾ;->ﹳٴ:Lᐧʼ/ʽ;

    iget-object v2, v0, Lᐧʼ/ʽ;->ˈٴ:Lᐧʼ/ʽ;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    sget-object v0, Lᴵי/ʼʼ;->ˉٴ:Lᴵי/ʼʼ;

    :cond_3
    :goto_2
    sput-object v0, Lᴵי/ᵢˏ;->ﹳٴ:Lᴵי/ʽʽ;

    return-void
.end method
