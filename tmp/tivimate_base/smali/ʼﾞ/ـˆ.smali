.class public final Lʼﾞ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:[Ljava/lang/String;

.field public final ˈ:Ljava/util/Set;

.field public final ⁱˊ:[I

.field public final ﹳٴ:Lʼﾞ/ʼˎ;


# direct methods
.method public constructor <init>(Lʼﾞ/ʼˎ;[I[Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ـˆ;->ﹳٴ:Lʼﾞ/ʼˎ;

    iput-object p2, p0, Lʼﾞ/ـˆ;->ⁱˊ:[I

    iput-object p3, p0, Lʼﾞ/ـˆ;->ʽ:[Ljava/lang/String;

    array-length p1, p2

    array-length p2, p3

    if-ne p1, p2, :cond_2

    array-length p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_1

    aget-object p1, p3, p2

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lﹶˈ/ﹳᐧ;->ʾˋ:Lﹶˈ/ﹳᐧ;

    :goto_1
    iput-object p1, p0, Lʼﾞ/ـˆ;->ˈ:Ljava/util/Set;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
