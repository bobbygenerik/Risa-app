.class public Landroidx/datastore/preferences/protobuf/ˉـ;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;I)V
    .locals 0

    iput p2, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ʾˋ:I

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ˉـ;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/ˉʾ;->ʽ(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ˉـ;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᵎﹶ(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/util/AbstractCollection;->clear()V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˉʾ;->clear()V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/ˉʾ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lיـ/ʽ;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v1, Lיـ/ˑﹳ;

    invoke-direct {v0, v1}, Lיـ/ʽ;-><init>(Lיـ/ˑﹳ;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/ᴵˑ;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ᴵˑ;-><init>(Lcom/google/android/gms/internal/measurement/ˉʾ;)V

    return-object v0

    :pswitch_1
    new-instance v0, Landroidx/datastore/preferences/protobuf/ᴵˑ;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v1, Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ᴵˑ;-><init>(Landroidx/datastore/preferences/protobuf/ﹳـ;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ˉـ;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ˉʾ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ˉـ;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Lיـ/ˑﹳ;

    iget v0, v0, Lיـ/ﹳᐧ;->ʽʽ:I

    return v0

    :pswitch_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˉʾ;->size()I

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ˉـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->size()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
