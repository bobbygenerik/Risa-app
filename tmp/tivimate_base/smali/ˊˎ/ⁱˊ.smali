.class public final Lˊˎ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼˋ/ⁱˊ;


# instance fields
.field public final ʾˋ:Lˉˆ/ʿ;


# direct methods
.method public constructor <init>(Lˉˆ/ʿ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊˎ/ⁱˊ;->ʾˋ:Lˉˆ/ʿ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lˊˎ/ⁱˊ;->ʾˋ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼﹶ/ˈ;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final ʼʼ(ZLᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lˊˎ/ⁱˊ;->ʾˋ:Lˉˆ/ʿ;

    iget-object p1, p1, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʼﹶ/ˈ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lˊˎ/ˈ;

    new-instance v1, Lˊˎ/ﹳٴ;

    invoke-interface {p1}, Lʼﹶ/ˈ;->ʻᵎ()Lʼﹶ/ﹳٴ;

    move-result-object p1

    invoke-direct {v1, p1}, Lˊˎ/ﹳٴ;-><init>(Lʼﹶ/ﹳٴ;)V

    invoke-direct {v0, v1}, Lˊˎ/ˈ;-><init>(Lˊˎ/ﹳٴ;)V

    invoke-interface {p2, v0, p3}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
