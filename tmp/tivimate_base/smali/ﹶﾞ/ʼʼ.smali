.class public final synthetic Lﹶﾞ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ʽﹳ;


# static fields
.field public static final synthetic ʽʽ:Lﹶﾞ/ʼʼ;

.field public static final synthetic ᴵˊ:Lﹶﾞ/ʼʼ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹶﾞ/ʼʼ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lﹶﾞ/ʼʼ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ʼʼ;->ᴵˊ:Lﹶﾞ/ʼʼ;

    new-instance v0, Lﹶﾞ/ʼʼ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lﹶﾞ/ʼʼ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ʼʼ;->ʽʽ:Lﹶﾞ/ʼʼ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹶﾞ/ʼʼ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lﹶﾞ/ʼʼ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᴵᐧ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ᴵᐧ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ᴵᐧ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉˊ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᴵʽ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    :pswitch_0
    sget-object v0, Lﹶﾞ/ᴵᵔ;->ﹳٴ:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʼⁱ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼⁱ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʼⁱ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˈﾞ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʻـ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
