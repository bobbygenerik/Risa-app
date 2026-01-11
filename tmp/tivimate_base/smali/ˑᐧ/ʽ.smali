.class public abstract Lˑᐧ/ʽ;
.super Lˎᵔ/ⁱˊ;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final ᴵˊ:[B


# direct methods
.method public constructor <init>(Lˎᵔ/ﾞᴵ;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lˎᵔ/ⁱˊ;-><init>(Lˎᵔ/ﾞᴵ;)V

    iput-object p2, p0, Lˑᐧ/ʽ;->ᴵˊ:[B

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    .prologue
    iget-object v0, p0, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    iget-object v0, v0, Lˎᵔ/ﾞᴵ;->ˈ:Lˎᵔ/ﹳٴ;

    sget-object v1, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    if-ne v0, v1, :cond_0

    sget-object v0, Lˎᵔ/ﾞᴵ;->ˉʿ:Lˎᵔ/ˑﹳ;

    new-instance v1, Lﹳˋ/ʼˎ;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lﹳˋ/ʼˎ;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lˆⁱ/ﹳٴ;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lˆⁱ/ﹳٴ;-><init>(Lﹳˋ/ʼˎ;I)V

    iget-object v1, p0, Lˑᐧ/ʽ;->ᴵˊ:[B

    invoke-virtual {v2, v0, v1}, Lˆⁱ/ﹳٴ;->ᐧˎ(Lˎᵔ/ﾞᴵ;[B)Lˎᵔ/ⁱˊ;

    move-result-object v0

    check-cast v0, Lˈˑ/ﹳٴ;

    invoke-virtual {v0}, Lˈˑ/ﹳٴ;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
