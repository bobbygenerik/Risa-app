.class public final Landroidx/datastore/preferences/protobuf/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final ʽʽ:I

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public ᴵˊ:I


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ᵎﹶ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ˈٴ:Ljava/lang/Object;

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ˎˏ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ˈٴ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ˎˏ;->ˈ()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ˑʼ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ˈٴ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/ˑʼ;->ˈ()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ˈٴ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵔᵢ(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ˑʼ;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/ˑʼ;->ⁱˊ(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˎˏ;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/ˎˏ;->ⁱˊ(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʽʽ:I

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ᴵˊ:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᵎﹶ(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ˈ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
