.class public final Lᐧᵢ/ʼˎ;
.super Ljava/util/concurrent/CompletableFuture;
.source "SourceFile"


# instance fields
.field public final ʾˋ:Lᐧᵢ/ᴵˊ;


# direct methods
.method public constructor <init>(Lᐧᵢ/ᴵˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ʼˎ;->ʾˋ:Lᐧᵢ/ᴵˊ;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lᐧᵢ/ʼˎ;->ʾˋ:Lᐧᵢ/ᴵˊ;

    invoke-virtual {v0}, Lᐧᵢ/ᴵˊ;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result p1

    return p1
.end method
