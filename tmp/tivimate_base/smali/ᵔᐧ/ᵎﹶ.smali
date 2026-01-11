.class public final synthetic Lᵔᐧ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:J

.field public final synthetic ʾˋ:Lᵔᐧ/ᵔʾ;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lᵔᐧ/ᵔʾ;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ᵎﹶ;->ʾˋ:Lᵔᐧ/ᵔʾ;

    iput p2, p0, Lᵔᐧ/ᵎﹶ;->ᴵˊ:I

    iput-wide p3, p0, Lᵔᐧ/ᵎﹶ;->ʽʽ:J

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔᐧ/ᵎﹶ;->ʾˋ:Lᵔᐧ/ᵔʾ;

    iget v1, p0, Lᵔᐧ/ᵎﹶ;->ᴵˊ:I

    iget-wide v2, p0, Lᵔᐧ/ᵎﹶ;->ʽʽ:J

    :try_start_0
    iget-object v4, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    invoke-virtual {v4, v1, v2, v3}, Lᵔᐧ/ـˆ;->ˈʿ(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1}, Lᵔᐧ/ᵔʾ;->ʽ(IILjava/io/IOException;)V

    :goto_0
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0
.end method
