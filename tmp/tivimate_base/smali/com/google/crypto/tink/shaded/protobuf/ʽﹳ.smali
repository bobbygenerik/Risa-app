.class public abstract Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ᵔי;
.implements Ljava/lang/Cloneable;


# instance fields
.field public final ʾˋ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

.field public ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ʾˋ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼᐧ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->יـ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ˈ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼᐧ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ʽ:Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ⁱˊ(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ᵔﹳ()V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    return-object v0
.end method

.method public final ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ʾˋ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ﹳᐧ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ˈ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    iput-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    return-object v0
.end method

.method public final ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ʾˋ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ˈ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˉˆ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;-><init>()V

    throw v0
.end method

.method public final ﾞᴵ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼᐧ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ʾˋ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->יـ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    :cond_0
    return-void
.end method
