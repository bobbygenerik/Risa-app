.class public final Lᴵי/ˉˆ;
.super Lᴵי/ʿ;
.source "SourceFile"

# interfaces
.implements Lᴵי/ᵔʾ;


# instance fields
.field public final ᴵᵔ:Lᴵי/ᐧᴵ;


# direct methods
.method public constructor <init>(Lᴵי/ᐧᴵ;)V
    .locals 0

    invoke-direct {p0}, Lˊʽ/ˆʾ;-><init>()V

    iput-object p1, p0, Lᴵי/ˉˆ;->ᴵᵔ:Lᴵי/ᐧᴵ;

    return-void
.end method


# virtual methods
.method public final getParent()Lᴵי/ᴵˑ;
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ˆʾ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ٴﹶ(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    iget-object p1, p0, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lᴵי/ˉˆ;->ᴵᵔ:Lᴵי/ᐧᴵ;

    invoke-virtual {v0, p1}, Lᴵי/ᐧᴵ;->ᵔﹳ(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ⁱˊ(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lᴵי/ᐧᴵ;->ʻٴ(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
