.class public final synthetic Lﹳᵢ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ﾞᴵ;


# instance fields
.field public final synthetic ʽʽ:Lˎʾ/ᵎﹶ;

.field public final synthetic ʾˋ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final synthetic ˈٴ:I

.field public final synthetic ᴵˊ:Lﹳᵢ/ﹳᐧ;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ʽʽ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object p2, p0, Lﹳᵢ/ʽʽ;->ᴵˊ:Lﹳᵢ/ﹳᐧ;

    iput-object p3, p0, Lﹳᵢ/ʽʽ;->ʽʽ:Lˎʾ/ᵎﹶ;

    iput p4, p0, Lﹳᵢ/ʽʽ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lﹳᵢ/ٴᵢ;

    iget-object p1, p0, Lﹳᵢ/ʽʽ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v1, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lﹳᵢ/ᵢˏ;

    iget-object v3, p0, Lﹳᵢ/ʽʽ;->ᴵˊ:Lﹳᵢ/ﹳᐧ;

    iget-object v4, p0, Lﹳᵢ/ʽʽ;->ʽʽ:Lˎʾ/ᵎﹶ;

    iget v5, p0, Lﹳᵢ/ʽʽ;->ˈٴ:I

    invoke-interface/range {v0 .. v5}, Lﹳᵢ/ٴᵢ;->ˈٴ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V

    return-void
.end method
