.class public final synthetic Lﹳᵢ/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ﾞᴵ;


# instance fields
.field public final synthetic ʽʽ:Lˎʾ/ᵎﹶ;

.field public final synthetic ʾˋ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final synthetic ˈٴ:Ljava/io/IOException;

.field public final synthetic ᴵˊ:Lﹳᵢ/ﹳᐧ;

.field public final synthetic ᴵᵔ:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ᴵᵔ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object p2, p0, Lﹳᵢ/ᴵᵔ;->ᴵˊ:Lﹳᵢ/ﹳᐧ;

    iput-object p3, p0, Lﹳᵢ/ᴵᵔ;->ʽʽ:Lˎʾ/ᵎﹶ;

    iput-object p4, p0, Lﹳᵢ/ᴵᵔ;->ˈٴ:Ljava/io/IOException;

    iput-boolean p5, p0, Lﹳᵢ/ᴵᵔ;->ᴵᵔ:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lﹳᵢ/ٴᵢ;

    iget-object p1, p0, Lﹳᵢ/ᴵᵔ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v1, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lﹳᵢ/ᵢˏ;

    iget-object v3, p0, Lﹳᵢ/ᴵᵔ;->ᴵˊ:Lﹳᵢ/ﹳᐧ;

    iget-object v4, p0, Lﹳᵢ/ᴵᵔ;->ʽʽ:Lˎʾ/ᵎﹶ;

    iget-object v5, p0, Lﹳᵢ/ᴵᵔ;->ˈٴ:Ljava/io/IOException;

    iget-boolean v6, p0, Lﹳᵢ/ᴵᵔ;->ᴵᵔ:Z

    invoke-interface/range {v0 .. v6}, Lﹳᵢ/ٴᵢ;->ᴵˊ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;Ljava/io/IOException;Z)V

    return-void
.end method
