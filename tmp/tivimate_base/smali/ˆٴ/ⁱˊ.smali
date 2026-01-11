.class public final Lˆٴ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆٴ/ﹳٴ;


# static fields
.field public static volatile ʽ:Lˆٴ/ⁱˊ;


# instance fields
.field public final ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

.field public final ﹳٴ:Lˊⁱ/ˑﹳ;


# direct methods
.method public constructor <init>(Lˊⁱ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object p1, p0, Lˆٴ/ⁱˊ;->ﹳٴ:Lˊⁱ/ˑﹳ;

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lˆٴ/ⁱˊ;->ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/String;Lˑʼ/ᵎˊ;)Lˋⁱ/ﾞᴵ;
    .locals 4

    .prologue
    sget-object v0, Lᐧﹳ/ﹳٴ;->ʽ:Lʼʻ/ʿᵢ;

    invoke-virtual {v0, p1}, Lʼʻ/ᵎⁱ;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    iget-object v2, p0, Lˆٴ/ⁱˊ;->ⁱˊ:Lj$/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    invoke-virtual {v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "fiam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lˆٴ/ⁱˊ;->ﹳٴ:Lˊⁱ/ˑﹳ;

    if-eqz v0, :cond_2

    new-instance v0, Lـʾ/ᵔﹳ;

    invoke-direct {v0, v3, p2}, Lـʾ/ᵔﹳ;-><init>(Lˊⁱ/ˑﹳ;Lˑʼ/ᵎˊ;)V

    goto :goto_0

    :cond_2
    const-string v0, "clx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lᐧﹳ/ʽ;

    invoke-direct {v0, v3, p2}, Lᐧﹳ/ʽ;-><init>(Lˊⁱ/ˑﹳ;Lˑʼ/ᵎˊ;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v2, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lˋⁱ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method
