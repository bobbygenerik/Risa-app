.class public final Lʽᴵ/ʼʼ;
.super Lʽᴵ/ﾞʻ;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public ˈ:Lʽᴵ/ﾞʻ;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ʼʼ;->ﹳٴ:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lʽᴵ/ʼʼ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lʽᴵ/ʼʼ;->ʽ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lʽᴵ/ʼʼ;->ˈ:Lʽᴵ/ﾞʻ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʽᴵ/ʼʼ;->ˈ:Lʽᴵ/ﾞʻ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "JsonAdapter isn\'t ready"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lʽᴵ/ʼʼ;->ˈ:Lʽᴵ/ﾞʻ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonAdapter isn\'t ready"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
