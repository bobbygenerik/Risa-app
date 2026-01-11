.class public abstract Landroidx/datastore/preferences/protobuf/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final ʾˋ:Landroidx/datastore/preferences/protobuf/ʻٴ;

.field public ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ʻٴ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ʾˋ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ᵎﹶ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ʼˎ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ʾˋ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ʽ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ˏי;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ˏי;->ⁱˊ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v1

    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    return-object v0
.end method

.method public final ˈ()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ᵎﹶ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ʾˋ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ʼˎ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    sget-object v2, Landroidx/datastore/preferences/protobuf/ˑٴ;->ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/datastore/preferences/protobuf/ˑٴ;->ﹳٴ(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    :cond_0
    return-void
.end method

.method public final ⁱˊ()Landroidx/datastore/preferences/protobuf/ʻٴ;
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ᵎﹶ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ˑٴ;->ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/ˑٴ;->ﹳٴ(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ⁱˊ(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ᵔᵢ()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˏי;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ʻٴ;

    return-object v0
.end method

.method public final ﹳٴ()Landroidx/datastore/preferences/protobuf/ʻٴ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ˏי;->ⁱˊ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﾞᴵ(Landroidx/datastore/preferences/protobuf/ʻٴ;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;-><init>()V

    throw v0
.end method
