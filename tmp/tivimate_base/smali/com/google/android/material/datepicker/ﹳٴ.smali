.class public final Lcom/google/android/material/datepicker/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ⁱˊ:I


# instance fields
.field public ﹳٴ:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x76c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/ᵔﹳ;->ﹳٴ(II)Lcom/google/android/material/datepicker/ᵔﹳ;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/ᵔﹳ;->ˊʻ:J

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/material/datepicker/ʼʼ;->ʽ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v3}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    const/16 v0, 0x834

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/ᵔﹳ;->ﹳٴ(II)Lcom/google/android/material/datepicker/ᵔﹳ;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/ᵔﹳ;->ˊʻ:J

    invoke-static {v2}, Lcom/google/android/material/datepicker/ʼʼ;->ʽ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v2}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    return-void
.end method
