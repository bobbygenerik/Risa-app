.class public final Lﹶˆ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹶˆ/ʼˎ;

.field public static final ⁱˊ:Lﹶˆ/ʼˎ;


# instance fields
.field public final ﹳٴ:Lﹶˆ/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lﹶˆ/ʼˎ;

    new-instance v1, Lᵔﹶ/ᵔʾ;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lᵔﹶ/ᵔʾ;-><init>(I)V

    invoke-direct {v0, v1}, Lﹶˆ/ʼˎ;-><init>(Lﹶˆ/ˆʾ;)V

    sput-object v0, Lﹶˆ/ʼˎ;->ⁱˊ:Lﹶˆ/ʼˎ;

    new-instance v0, Lﹶˆ/ʼˎ;

    new-instance v1, Lᵔⁱ/ᵔʾ;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lᵔⁱ/ᵔʾ;-><init>(I)V

    invoke-direct {v0, v1}, Lﹶˆ/ʼˎ;-><init>(Lﹶˆ/ˆʾ;)V

    sput-object v0, Lﹶˆ/ʼˎ;->ʽ:Lﹶˆ/ʼˎ;

    new-instance v0, Lﹶˆ/ʼˎ;

    new-instance v1, Lᵔﹶ/ᴵˊ;

    invoke-direct {v1, v2}, Lᵔﹶ/ᴵˊ;-><init>(I)V

    invoke-direct {v0, v1}, Lﹶˆ/ʼˎ;-><init>(Lﹶˆ/ˆʾ;)V

    new-instance v0, Lﹶˆ/ʼˎ;

    new-instance v1, Lᵔﹶ/ᵔʾ;

    invoke-direct {v1, v2}, Lᵔﹶ/ᵔʾ;-><init>(I)V

    invoke-direct {v0, v1}, Lﹶˆ/ʼˎ;-><init>(Lﹶˆ/ˆʾ;)V

    new-instance v0, Lﹶˆ/ʼˎ;

    new-instance v1, Lᵔﹶ/ᴵˊ;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lᵔﹶ/ᴵˊ;-><init>(I)V

    invoke-direct {v0, v1}, Lﹶˆ/ʼˎ;-><init>(Lﹶˆ/ˆʾ;)V

    new-instance v0, Lﹶˆ/ʼˎ;

    new-instance v1, Lᵔﹶ/ˊʻ;

    invoke-direct {v1, v2}, Lᵔﹶ/ˊʻ;-><init>(I)V

    invoke-direct {v0, v1}, Lﹶˆ/ʼˎ;-><init>(Lﹶˆ/ˆʾ;)V

    new-instance v0, Lﹶˆ/ʼˎ;

    new-instance v1, Lᵔﹶ/ˈٴ;

    invoke-direct {v1, v2}, Lᵔﹶ/ˈٴ;-><init>(I)V

    invoke-direct {v0, v1}, Lﹶˆ/ʼˎ;-><init>(Lﹶˆ/ˆʾ;)V

    return-void
.end method

.method public constructor <init>(Lﹶˆ/ˆʾ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lˈᵎ/ﹳٴ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lﹶˆ/ᵎﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lﹶˆ/ᵎﹶ;-><init>(Lﹶˆ/ˆʾ;I)V

    iput-object v0, p0, Lﹶˆ/ʼˎ;->ﹳٴ:Lﹶˆ/ᵔᵢ;

    return-void

    :cond_0
    const-string v0, "java.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The Android Project"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lﹶˆ/ᵎﹶ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lﹶˆ/ᵎﹶ;-><init>(Lﹶˆ/ˆʾ;I)V

    iput-object v0, p0, Lﹶˆ/ʼˎ;->ﹳٴ:Lﹶˆ/ᵔᵢ;

    return-void

    :cond_1
    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p1}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lﹶˆ/ʼˎ;->ﹳٴ:Lﹶˆ/ᵔᵢ;

    return-void
.end method
