.class public final Lcom/google/android/gms/internal/measurement/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʾˋ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʽʽ:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˈ;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˈ;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Out of bounds index: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iput v1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;->ʾˋ:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ʼᐧ;->ᴵˊ:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
