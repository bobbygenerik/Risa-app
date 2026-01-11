.class public final synthetic Lﹶﾞ/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ʽﹳ;


# static fields
.field public static final synthetic ʽʽ:Lﹶﾞ/ᵢˏ;

.field public static final synthetic ᴵˊ:Lﹶﾞ/ᵢˏ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹶﾞ/ᵢˏ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lﹶﾞ/ᵢˏ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ᵢˏ;->ᴵˊ:Lﹶﾞ/ᵢˏ;

    new-instance v0, Lﹶﾞ/ᵢˏ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lﹶﾞ/ᵢˏ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ᵢˏ;->ʽʽ:Lﹶﾞ/ᵢˏ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹶﾞ/ᵢˏ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lﹶﾞ/ᵢˏ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʼٴ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼٴ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʼٴ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v0, v0, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔˆ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵢٴ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/יˑ;

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

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˉˏ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ˉˏ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ⁱˊ()Lcom/google/android/gms/internal/measurement/ⁱʼ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˆᴵ;->ˈ:Lcom/google/android/gms/internal/measurement/יˑ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/יˑ;->ⁱˊ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
