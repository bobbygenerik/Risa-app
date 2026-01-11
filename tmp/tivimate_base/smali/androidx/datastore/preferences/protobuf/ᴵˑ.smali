.class public final Landroidx/datastore/preferences/protobuf/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public ʽʽ:Z

.field public final synthetic ʾˋ:I

.field public ˈٴ:Ljava/util/Iterator;

.field public ᴵˊ:I

.field public final synthetic ᴵᵔ:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ﹳـ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵᵔ:Ljava/util/AbstractMap;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ˉʾ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵᵔ:Ljava/util/AbstractMap;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵᵔ:Ljava/util/AbstractMap;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˉʾ;

    iget v3, v2, Lcom/google/android/gms/internal/measurement/ˉʾ;->ᴵˊ:I

    if-lt v0, v3, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/ˉʾ;->ʽʽ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ⁱˊ()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵᵔ:Ljava/util/AbstractMap;

    check-cast v2, Landroidx/datastore/preferences/protobuf/ﹳـ;

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ﹳٴ()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʽʽ:Z

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵᵔ:Ljava/util/AbstractMap;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʾ;

    iget v2, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ᴵˊ:I

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ʾˋ:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʾˆ;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ⁱˊ()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʽʽ:Z

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵᵔ:Ljava/util/AbstractMap;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﹳـ;

    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ﹳٴ()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʾˋ:I

    const-string v1, "remove() was called before next()"

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵᵔ:Ljava/util/AbstractMap;

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʽʽ:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʽʽ:Z

    check-cast v2, Lcom/google/android/gms/internal/measurement/ˉʾ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˉʾ;->ﾞᴵ()V

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    iget v1, v2, Lcom/google/android/gms/internal/measurement/ˉʾ;->ᴵˊ:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/ˉʾ;->ˈ(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ⁱˊ()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast v2, Landroidx/datastore/preferences/protobuf/ﹳـ;

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʽʽ:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ʽʽ:Z

    sget v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ˊʻ:I

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ⁱˊ()V

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    iget-object v1, v2, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵˊ:I

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᵔᵢ(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ﹳٴ()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ⁱˊ()Ljava/util/Iterator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ˈٴ:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵᵔ:Ljava/util/AbstractMap;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʾ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ˉʾ;->ʽʽ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ˈٴ:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ˈٴ:Ljava/util/Iterator;

    return-object v0
.end method

.method public ﹳٴ()Ljava/util/Iterator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ˈٴ:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ᴵᵔ:Ljava/util/AbstractMap;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ﹳـ;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ˈٴ:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵˑ;->ˈٴ:Ljava/util/Iterator;

    return-object v0
.end method
