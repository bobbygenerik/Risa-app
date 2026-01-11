.class public final Lʽʼ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽʼ/ʼˎ;


# instance fields
.field public final ﹳٴ:Lˏـ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lˏـ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽʼ/ᵎﹶ;->ﹳٴ:Lˏـ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ(Lˎﾞ/ⁱˊ;)Z
    .locals 2

    .prologue
    iget v0, p1, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lʽʼ/ᵎﹶ;->ﹳٴ:Lˏـ/ᵎﹶ;

    iget-object p1, p1, Lˎﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
